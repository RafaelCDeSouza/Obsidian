Padrão Linux

```bash
rm -rf /root/configure_linux.sh \
&& wget -O /root/configure_linux.sh https://raw.githubusercontent.com/OutcoreIT/scripts/refs/heads/main/configure_linux.sh \
&& chmod +x /root/configure_linux.sh \
&& /root/configure_linux.sh \
&& exec zsh
```

Instalar Prometheus

```bash
rm -rf /root/installAgentMonit.sh \
&& wget -O /root/installAgentMonit.sh https://raw.githubusercontent.com/OutcoreIT/scripts/refs/heads/main/installAgentMonit.sh \
&& chmod +x /root/installAgentMonit.sh \
&& /root/installAgentMonit.sh "XGbnZkBAKPPFm8qGTj70BcfR8IJo8oaiwlAj7ooahVZ_I58hxMy4GhUtV9V6NDTzGeG8Vo9gO6ylrZZtV2LhHw=="
```