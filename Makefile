# Variables
PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin
LOGDIR ?= /var/log
LOGFILE ?= xconfig.log

# Installation Paths
INSTALL_BIN = $(BINDIR)/xconfig
INSTALL_LOG = $(LOGDIR)/$(LOGFILE)

# Default Target
default:
	@echo "Available targets:"
	@echo "  install     Install the xconfig script."
	@echo "  uninstall   Remove the xconfig script."
	@echo "  clean       Clean up temporary files."

# Install Target
install:
	@echo "Installing xconfig script..."
	mkdir -p $(BINDIR)
	install -m 755 xconfig $(INSTALL_BIN)
	@echo "Creating log directory..."
	mkdir -p $(LOGDIR)
	@echo "xconfig script installed at $(INSTALL_BIN)."
	@echo "Log file located at $(INSTALL_LOG)."

# Uninstall Target
uninstall:
	@echo "Removing xconfig script..."
	if [ -f $(INSTALL_BIN) ]; then \
		rm -f $(INSTALL_BIN); \
		echo "Removed $(INSTALL_BIN)."; \
	else \
		echo "xconfig script not found at $(INSTALL_BIN)."; \
	fi
	@echo "Removing log file..."
	if [ -f $(INSTALL_LOG) ]; then \
		rm -f $(INSTALL_LOG); \
		echo "Removed $(INSTALL_LOG)."; \
	else \
		echo "Log file not found at $(INSTALL_LOG)."; \
	fi

# Clean Target
clean:
	@echo "No temporary files to clean."

