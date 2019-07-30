CREATE TABLE market_open_date
(
  FMID int primary key not null,
  start_date date,
  end_date date,
  season_number int foreign key
);

CREATE TABLE market_open_time
(
  FMID int primary key not null,
  day_of_week char(3),
  start_time datetime,
  end_time datetime,
  season_number int foreign key,
  FMID foreign key references market_available_goods(fmid)
);

CREATE TABLE market_available_goods
(
  fmid int primary key not null,
  organic char(1),
  bakedgoods char(1),
  cheese char(1),
  crafts char(1),
  flowers char(1),
  eggs char(1),
  seafood char(1),
  herbs char(1),
  vegetables char(1),
  hoeny char(1),
  jams char(1),
  maple char(1),
  meat char(1),
  nursery char(1),
  plants char(1),
  poultry char(1),
  prepared char(1),
  soap char(1),
  trees char(1),
  wine char(1),
  coffee char(1),
  beans char(1),
  fruits char(1),
  grains char(1),
  juices char(1),
  mushrooms char(1),
  petfood char(1),
  tofu char(1),
  wildharvested char(1)
);

CREATE TABLE market_payment_method
(
  FMID int primary key not null,
  WIC char(1),
  credit char(1),
  wiccash char(1),
  SFMNP char(1),
  SNAP char(1)
);

CREATE TABLE market_info
(
  FMID int primary key not null,
  market_name char(50),
  website char(50),
  facebook char(50),
  twitter char(50),
  youtube char(50),
  other_media char(50),
  updatetime datetime
);

CREATE TABLE market_location
(
  fmid int primary key not null,
  street char(50),
  city char(50),
  state char(50),
  country char(50),
  zip int
);
