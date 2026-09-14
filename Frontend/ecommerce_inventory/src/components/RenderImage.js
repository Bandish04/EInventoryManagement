import { isValidUrl,getImageUrl } from "../utils/Helper";
import Image from "./Image";
import { Typography } from "@mui/material";

const RenderImage=({data,name})=>{

    let imageUrl='';

    if(Array.isArray(data) && data.length>0){
        imageUrl=data[0];
    }
    else if(data && data!==''){
        imageUrl=data;
    }

    return (imageUrl && isValidUrl(imageUrl))?
        <Image
            src={getImageUrl(imageUrl)}
            alt={name}
            style={{width:70,height:70,padding:'5px'}}
        />
        :
        <Typography variant="body2" pt={3} pb={3}>
            No Image
        </Typography>
}

export default RenderImage;