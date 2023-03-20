async function main() {
    const helloWorld = await ethers.getContractFactory("helloWorld");

    //start deployment, returning a promise that resolves to a contract object
    const hello_world = await helloWorld.deploy("Hello World!");
    console.log("contract deployed to address:", hello_world.address);
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error)
    process.exit(1)
  });