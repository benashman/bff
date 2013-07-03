module.exports = function(grunt) {

    // Project configuration
    grunt.initConfig({
        pkg: grunt.file.readJSON("package.json"),
        compass: {
            dist: {
                options: {
                    sassDir: "public/sass",
                    cssDir: "public/css"
                }
            }
        },
        watch: {
            compass: {
                files: "public/sass/**/*.scss",
                tasks: ["compass"]
            }
        }
    });

    // Load tasks
    grunt.loadNpmTasks("grunt-contrib-watch");
    grunt.loadNpmTasks("grunt-contrib-compass");

    // Register
    grunt.registerTask("build", ["compass"]);
};
