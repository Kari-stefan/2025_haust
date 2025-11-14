const employees = [
    {
        id: 1,
        name: "Anna Gunnarsdóttir",
        department: "Development",
        status: "Permanent"
    },
    {
        id: 2,
        name: "Katrín Jónsdóttir",
        department: "Development",
        status: "Temporary"
    },
    {
        id: 3,
        name: "Hrannar Andri Zoega ",
        department: "Development",
        status: "Permanent"
    },

    {
        id: 4,
        name: "Anna Gunnarsdóttir",
        department: "Management",
        status: "Permanent"
    },
    {
        id: 5,
        name: "Katrín Jónsdóttir",
        department: "Management",
        status: "Permanent"
    },
    {
        id: 6,
        name: "Hrannar Andri Zoega ",
        department: "Management",
        status: "Permanent"
    },
    {
        id: 7,
        name: "Björn Pálsson",
        department: "Sales",
        status: "Temporary"
    },
    {
        id: 8,
        name: "Pétur Jóhann",
        department: "Sales",
        status: "Temporary"
    },
    {
        id: 9,
        name: "Davíð Karls",
        department: "Sales",
        status: "Permanent"
    }
];

const listContainer = document.querySelector("#listiContainer");
const showAllBtn = document.querySelector("#synaAllaBtn");
const showDevelopmentBtn = document.querySelector("#synaThrounBtn");
const showSalesBtn = document.querySelector("#synaSoluBtn");
const showStjornBtn = document.querySelector("#synaStjornBtn");

const renderList = (list) => {
    listContainer.innerHTML = '';

    list.forEach(employee => {
        
        let extraClass = '';
        if (employee.department === 'Development') {
            extraClass = 'kort-throun';
        } else if (employee.department === 'Management') {
            extraClass = 'kort-stjorn';
        } else if (employee.department === 'Sales') {
            extraClass = 'kort-sala';
        }
        const cardHtml = `
            <article class="starfsmanna-kort ${extraClass}">
                <h3>${employee.name}</h3>
                <p>Department: ${employee.department}</p>
                <p>Status: ${employee.status}</p>
            </article>
        `;

        listContainer.insertAdjacentHTML('beforeend', cardHtml);
    });
};

showAllBtn.addEventListener('click', () => {
    renderList(employees);
});

showDevelopmentBtn.addEventListener('click', () => {
    const developmentDepartment = employees.filter(e => e.department === 'Development');
    renderList(developmentDepartment);
});

showStjornBtn.addEventListener('click', () => {
    const managementDepartment = employees.filter(e => e.department === 'Management');
    renderList(managementDepartment);
});

showSalesBtn.addEventListener('click', () => {
    const salesDepartment = employees.filter(e => e.department === 'Sales');
    renderList(salesDepartment);
});

renderList(employees);