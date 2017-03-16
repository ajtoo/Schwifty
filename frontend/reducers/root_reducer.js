import {combineReducers} from 'redux';

import SessionsReducer from './session_reducer';

const RootReducer = combineReducers({
  session: SessionsReducer
});

export default RootReducer;