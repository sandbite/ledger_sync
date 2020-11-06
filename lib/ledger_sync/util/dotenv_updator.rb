# frozen_string_literal: true

module LedgerSync
  module Util
    class DotenvUpdator
      attr_reader :file_path

      def initialize(args = {})
        @file_path = args.fetch(:file_path, File.join(Dir.pwd, '.env.local'))
      end

      def update(args = {})
        client = args.fetch(:client)
        prefix = args.fetch(:prefix, "#{client.config.root_key.upcase}_")

        to_save = client.ledger_attributes_to_save.dup.stringify_keys

        Tempfile.open(".#{File.basename(file_path)}", File.dirname(file_path)) do |tempfile|
          File.open(file_path).each do |line|
            env_key = line.split('=').first
            client_method = env_key.split(prefix).last.downcase

            if line =~ /\A#{prefix}/ && to_save.key?(client_method)
              env_value = ENV[env_key]
              new_value = to_save.delete(client_method)
              tempfile.puts "#{env_key}=#{new_value}"
              next if env_value == new_value

              ENV[env_key] = new_value
              tempfile.puts "# #{env_key}=#{env_value} # Updated on #{Time.now}"
            else
              tempfile.puts line
            end

            to_save.each.map(&:to_s).join('=').each { |e| tempfile.puts(e) }
          end

          tempfile.close
          FileUtils.mv tempfile.path, filename
        end

        Dotenv.load
      end
    end
  end
end
