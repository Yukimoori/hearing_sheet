class Page < ApplicationRecord
  enum tool: { training: 0, schooling: 1, correspondence: 2, text: 3}
  enum property: { nominee: 0, newemloyer: 1, employer: 2, other: 3}
  enum weekday: { mon: 0, tue: 1, wed: 2, tur: 3, fri: 4, sat: 5, sun: 6}
  enum aid: { nothing: 0, aidtraining: 1, incentive: 2, support: 3}
  enum examination: { true: 0, false: 1}
  enum status: { yet: 0, operating: 1}
end
