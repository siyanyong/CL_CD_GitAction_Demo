This app demostrates how you can push to Github and automatically:

- Run tests (ci.yml)
- Build and push to DockerHub (ci.yml)
- Deploy to Github pages (deploy.yml)

Note that if you use homepage in package.json, you must not use serve in
the Dockerfile because it does not support baseURLs. You have to use
Nginx. In other words if you still want your images to work AND you want
to deploy in Github Pages, you have to use Nginx!
