select
     a.cust_no
    ,sum(nvl(b.trx_amt, 0)) as total_trx_amt
from table a
left join table b
on a.id = b.id
where a.etl_dt = '2022-01-01'
group by a.cust_no