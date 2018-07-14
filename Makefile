.DEFAULT_GOAL := help
NODE = docker-compose run --rm mobilebuilder

prepare
	$(NODE) sh -c "npm install -g create-react-native-app"
	$(NODE) sh -c "create-react-native-app mobile --scripts-version=react-native-scripts-ts"

console-node
	$(NODE) bash