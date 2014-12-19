module.exports = function (grunt) {
	grunt.initConfig({
		autoprefixer: {
			dist: {
				files: {
					'build/master.css': 'master.css'
				}
			}
		},
		watch: {
			styles: {
				files: ['master.css'],
				tasks: ['autoprefixer']
			}
		}
	});
	grunt.loadNpmTasks('grunt-autoprefixer');
	grunt.loadNpmTasks('grunt-contrib-watch');
};