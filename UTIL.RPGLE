**free

      /copy COPY

      dcl-Proc FnFormatoFecha Export;
        dcl-pi *n like(wFechaT);
          InDate Date(*ISO) Const;
        end-pi;

        dcl-s wFecha like(wFechaT);


        wFecha = %Char(InDate:*Iso0);

        Return wFecha;
 
      end-Proc; 

      dcl-Proc FnFormatoTiempo Export;
        dcl-pi *n like(wTiempoT);
          InTime Time(*ISO) Const;
        end-pi;


        dcl-s wTiempo like(wTiempoT);


        wTiempo = %Char(InTime:*hms);

        Return wTiempo;

      end-Proc; 


      dcl-Proc FnErrorSql Export;
        dcl-pi *n like(wErrorSqlT);
          InErrorSql like(wSqlStateT) Const;
        end-pi;

        dcl-s wMensaje like(wErrorT);

           select  
           when InErrorSql ='00000' then 
              wMensaje= 'Exitoso';
           when InErrorSql = '00100' then
              wMensaje='No encontrado';
           other
              wMensaje = 'No definido' ;
           EndSl
        Return wMensaje;

      end-Proc; 
      