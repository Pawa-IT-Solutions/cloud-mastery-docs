# 7. Run the Build & Access the Application

This is the final step. We will make a change in the cloud mastery frontend repo and push the change, which will build the frontend application and deploy it to Cloud Run. Once complete, we can access the public URL to see our live dashboard.

### Run the Frontend Trigger

1. Back on the Editor, you will see on the `EXPLORER` another directory named cloud-mastery-frontend.
 ![select frontend folder](assets/images/frontend-cloudshell-folder.png)
2. Just like before, select your README.md file under the `cloud-mastery-frontend` folder.
 ![select readme under frontend folder](assets/images/select-readme-frontend.png
3. You can make a change in this file, then just like with the backend, run the following chain of commands within cloud shell
    ```
    cd ~/cloud-mastery-frontend
    git add .
  
    git commit -m "initial commit"
    
    git push origin master
    
    ```
   
4. You will proceed to add and the commit the changes you have made before pushing to your forked repository.
    ![successful push to frontend repo](assets/images/cloud-master-frontend-push.png)


5. Navigate to the **History** page within Cloud Build. Click on the running build to monitor its progress.
6. This build will take less time compared to the cloud mastery backend build.

    ![Frontend Build History](assets/images/cb_frontend_history.png)

7. Once the build completes successfully, you are ready to see the application!

    ![Frontend Build Successful](assets/images/cb_frontend_build_success.png)

8. Navigate to the **Cloud Run** page in the console.

9. Click on the **`cloud-mastery-frontend`** service.

10. At the top of the service details page, you will see the primary URL for the application. Click on it to open it in a new tab.

    ![Accessing the Frontend URL](assets/images/cr_access_frontend_url.png)

11. You should now see the fully deployed application dashboard!

    ![Final Application Dashboard](assets/images/final_app_dashboard.png)

---

### Congratulations!

You have successfully built and deployed a full-stack, database-driven application on Google Cloud.

Throughout this lab, you have:

-   Prepared a Google Cloud environment and used the Cloud Shell.
-   Populated a managed Cloud SQL database.
-   Forked repositories and configured GitHub with SSH for secure access.
-   Built two separate CI/CD pipelines with Cloud Build.
-   Passed secrets to the build process using substitution variables.
-   Deployed both backend and frontend services to Cloud Run.