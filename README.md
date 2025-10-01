This app demostrates how you can push to Github and automatically:

- Run tests (ci.yml)
- Build and push to DockerHub (ci.yml)
- Deploy to Github pages (deploy.yml)

Note that if you use homepage in package.json, you must not use serve in
the Dockerfile because it does not support baseURLs. You have to use
Nginx. In other words if you still want your images to work AND you want
to deploy in Github Pages, you have to use Nginx!

---

You have to visit:

https://my-product-page-siyanyong-dev.apps.rm3.7wse.p1.openshiftapps.com/CL_CD_GitAction_Demo/

And you have to change the my-product-page route yaml to:

port:
    targetPort: 8080-tcp

from 80-tcp

You can run oc commands in the terminal in the top right hand corner.
