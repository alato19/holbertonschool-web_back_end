import { uploadPhoto, createUser } from './utils';

export default async function asyncUploadUser() {
  try {
    const responseFromUploadPhotoFunction = await uploadPhoto();
    const responseFromCreateUserFunction = await createUser();

    return {
      photo: responseFromUploadPhotoFunction,
      user: responseFromCreateUserFunction,
    };
  } catch (error) {
    return {
      photo: null,
      user: null,
    };
  }
}
