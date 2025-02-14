

// const handleUploadSingle = async (req, res, next) => {
//     try {
//       const type = req.query.type;    

//       const file = req.file;
//       if(!file){

//         return res.status(400).json({msg: "No se ha enviado un archivo"});
//       }
//        const baseUrl=  `${req.protocolo}://${req.get('host')} `;
//        const filePath = type ==='private'? 'private': 'public';
//       const fileDir = `${baseUrl}//${fileDir}/${file.filename}`;

//       res.status(200).json({
//         message: 'Archivo subido correctamente',
//         url:fileUrl,
//       }); 
 
//     } catch (error) {
//       console.error("Error en el login:", error.message); 
//       next(error);
//     }
// };
// const handleUploadMutiple = async (req, res, next) => {
//     try {
//       const type = req.query.type;    

//       const files = req.file;
//       if(!files || !files.length){

//         return res.status(400).json({msg: "No se subieron archivos"});
//       }
//        const baseUrl=  `${req.protocolo}://${req.get('host')} `;
//        const fileUrls = files.map(file => {
//  const fileDir = type ==='private'? 'private': 'public';
//       const fileUrl = `${baseUrl}//${fileDir}/${file.filename}`;

//        )},
//         return `${baseUrl}//${fileDir}/${file.filename}`;
      
//       res.status(200).json({
//         message: 'Archivo subido correctamente',
//         url:fileUrl,
//       }); 
 
//     } catch (error) {
//       console.error("Error en el login:", error.message); 
//       next(error);
//     }
// };


// module.exports = {handleUploadSingle, handleUploadMutiple};