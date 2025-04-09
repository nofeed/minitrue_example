# frozen_string_literal: true

workers {{ mt["workers"] }}
port {{ mt["port"] }}
preload_app!

environment "{{ mt["environment"] }}"
