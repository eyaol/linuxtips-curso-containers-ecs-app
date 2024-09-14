import http from 'k6/http';
import { sleep } from 'k6';

export const options = {
  vus: 2,
  duration: '30s',
};

const params = {
    headers: {
      'Content-Type': 'application/json',
      'Host': 'chip.linuxtips.demo'
    },
  };

export default function () {
  http.get('http://', params);
}