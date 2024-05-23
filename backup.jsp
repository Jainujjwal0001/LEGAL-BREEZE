<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>

    <script src="https://cdn.tailwindcss.com"></script>
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.css"
      rel="stylesheet"
    />
    <script
      src="https://kit.fontawesome.com/c52493ba6c.js"
      crossorigin="anonymous"
    ></script>
  </head>

  <body class="bg-gray-900 md:px-24 px-0">
    <c:import url="/header.jsp" />

    <main>
      <div class="flex my-4 justify-center">
        <h5
          class="text-4xl font-bold leading-none text-gray-900 dark:text-white"
        >
          All Lawyers
        </h5>
      </div>

      <div class="mb-4 border-b border-gray-200 dark:border-gray-700">
        <ul
          class="flex flex-wrap -mb-px text-sm font-medium text-center"
          id="default-styled-tab"
          data-tabs-toggle="#default-styled-tab-content"
          data-tabs-active-classes="text-purple-600 hover:text-purple-600 dark:text-purple-500 dark:hover:text-purple-500 border-purple-600 dark:border-purple-500"
          data-tabs-inactive-classes="dark:border-transparent text-gray-500 hover:text-gray-600 dark:text-gray-400 border-gray-100 hover:border-gray-300 dark:border-gray-700 dark:hover:text-gray-300"
          role="tablist"
        >
          <li class="me-2" role="presentation">
            <button
              class="inline-block p-4 border-b-2 rounded-t-lg"
              id="profile-styled-tab"
              data-tabs-target="#styled-profile ok"
              type="button"
              role="tab"
              aria-controls="profile"
              aria-selected="false"
            >
              Profile
            </button>
          </li>
          <li class="me-2" role="presentation">
            <button
              class="inline-block p-4 border-b-2 rounded-t-lg hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300"
              id="dashboard-styled-tab"
              data-tabs-target="#styled-dashboard"
              type="button"
              role="tab"
              aria-controls="dashboard"
              aria-selected="false"
            >
              Dashboard
            </button>
          </li>
          <li class="me-2" role="presentation">
            <button
              class="inline-block p-4 border-b-2 rounded-t-lg hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300"
              id="settings-styled-tab"
              data-tabs-target="#styled-settings"
              type="button"
              role="tab"
              aria-controls="settings"
              aria-selected="false"
            >
              Settings
            </button>
          </li>
          <li role="presentation">
            <button
              class="inline-block p-4 border-b-2 rounded-t-lg hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300"
              id="contacts-styled-tab"
              data-tabs-target="#styled-contacts"
              type="button"
              role="tab"
              aria-controls="contacts"
              aria-selected="false"
            >
              Contacts
            </button>
          </li>
        </ul>
      </div>
      <div id="default-styled-tab-content">
        <div
          class="hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800"
          id="styled-profile ok"
          role="tabpanel"
          aria-labelledby="profile-tab"
        >
          <p class="text-sm text-gray-500 dark:text-gray-400">
            This is some placeholder content the
            <strong class="font-medium text-gray-800 dark:text-white"
              >Profile tab's associated content</strong
            >. Clicking another tab will toggle the visibility of this one for
            the next. The tab JavaScript swaps classes to control the content
            visibility and styling.
          </p>
        </div>
        <div
          class="hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800"
          id="styled-dashboard"
          role="tabpanel"
          aria-labelledby="dashboard-tab"
        >
          <p class="text-sm text-gray-500 dark:text-gray-400">
            This is some placeholder content the
            <strong class="font-medium text-gray-800 dark:text-white"
              >Dashboard tab's associated content</strong
            >. Clicking another tab will toggle the visibility of this one for
            the next. The tab JavaScript swaps classes to control the content
            visibility and styling.
          </p>
        </div>
        <div
          class="hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800"
          id="styled-settings"
          role="tabpanel"
          aria-labelledby="settings-tab"
        >
          <p class="text-sm text-gray-500 dark:text-gray-400">
            This is some placeholder content the
            <strong class="font-medium text-gray-800 dark:text-white"
              >Settings tab's associated content</strong
            >. Clicking another tab will toggle the visibility of this one for
            the next. The tab JavaScript swaps classes to control the content
            visibility and styling.
          </p>
        </div>
        <div
          class="hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800"
          id="styled-contacts"
          role="tabpanel"
          aria-labelledby="contacts-tab"
        >
          <p class="text-sm text-gray-500 dark:text-gray-400">
            This is some placeholder content the
            <strong class="font-medium text-gray-800 dark:text-white"
              >Contacts tab's associated content</strong
            >. Clicking another tab will toggle the visibility of this one for
            the next. The tab JavaScript swaps classes to control the content
            visibility and styling.
          </p>
        </div>
      </div>

      <!-- ////////////////////////// -->

      <!-- The main card -->
      <div class="flow-root">
        <ul role="list" class="divide-gray-200 dark:divide-gray-700">
          <c:forEach var="lawyer" items="${lawyers}">
            <li class="py-3 sm:py-4">
              <a
                href="#"
                class="flex md:flex-row flex-col h-[225px] items-center bg-white border border-gray-200 rounded-lg shadow md:w-full hover:bg-gray-100 dark:border-gray-700 dark:bg-gray-800 dark:hover:bg-gray-700"
              >
                <img
                  class="object-cover w-full rounded-t-lg h-96 md:h-full md:w-[300px] md:rounded-none md:rounded-s-lg"
                  src="static/img/Rick_and_Morty-Run_for_Jewels-vector_graphics-car-rainbows.jpg"
                  alt="Lawyer Image"
                />
                <div class="flex flex-col justify-center w-[50%] items-center">
                  <div class="space-y-2">
                    <div class="flex flex-row leading-normal">
                      <h5
                        class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                      >
                        Name :
                      </h5>
                      <p
                        class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400"
                      >
                        <c:out value="${lawyer.name}" />
                      </p>
                    </div>

                    <div class="flex flex-row leading-normal">
                      <h5
                        class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                      >
                        Experience :&nbsp;
                      </h5>
                      <p
                        class="text-2xl font-normal text-gray-700 dark:text-gray-400"
                      >
                        <c:out value="${lawyer.experience}" /> years
                      </p>
                    </div>

                    <div class="flex flex-row leading-normal">
                      <h5
                        class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                      >
                        Phone :
                      </h5>
                      <p
                        class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400"
                      >
                        <c:out value="${lawyer.phone}" />
                      </p>
                    </div>
                    <div class="flex flex-row leading-normal">
                      <button
                        type="button"
                        class="text-white bg-gradient-to-r from-purple-500 via-purple-600 to-purple-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-purple-300 dark:focus:ring-purple-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2"
                      >
                        HIRE
                      </button>
                    </div>
                  </div>
                </div>
              </a>
            </li>
          </c:forEach>
        </ul>
      </div>
    </main>

    <c:import url="/footer.jsp" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.js"></script>
  </body>
</html>