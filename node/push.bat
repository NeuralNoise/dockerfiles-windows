call :push 4.8.1 4.8 4
call :push 6.10.1 6.10 6
call :push 7.7.4 7.7 7

goto :eof
:push
setlocal
docker tag node:%1 stefanscherer/node-windows:%1 || exit /b
docker tag node:%2 stefanscherer/node-windows:%2 || exit /b
docker tag node:%3 stefanscherer/node-windows:%3 || exit /b

docker tag node:%1-onbuild stefanscherer/node-windows:%1-onbuild || exit /b
docker tag node:%2-onbuild stefanscherer/node-windows:%2-onbuild || exit /b
docker tag node:%3-onbuild stefanscherer/node-windows:%3-onbuild || exit /b

docker tag node:%1-nano stefanscherer/node-windows:%1-nano || exit /b
docker tag node:%2-nano stefanscherer/node-windows:%2-nano || exit /b
docker tag node:%3-nano stefanscherer/node-windows:%3-nano || exit /b

docker tag node:%1-nano-onbuild stefanscherer/node-windows:%1-nano-onbuild || exit /b
docker tag node:%2-nano-onbuild stefanscherer/node-windows:%2-nano-onbuild || exit /b
docker tag node:%3-nano-onbuild stefanscherer/node-windows:%3-nano-onbuild || exit /b

docker push stefanscherer/node-windows:%1
docker push stefanscherer/node-windows:%2
docker push stefanscherer/node-windows:%3
docker push stefanscherer/node-windows:%1-onbuild
docker push stefanscherer/node-windows:%2-onbuild
docker push stefanscherer/node-windows:%3-onbuild
docker push stefanscherer/node-windows:%1-nano
docker push stefanscherer/node-windows:%2-nano
docker push stefanscherer/node-windows:%3-nano
docker push stefanscherer/node-windows:%1-nano-onbuild
docker push stefanscherer/node-windows:%2-nano-onbuild
docker push stefanscherer/node-windows:%3-nano-onbuild
endlocal
