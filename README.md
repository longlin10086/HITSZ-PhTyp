# HITSZ-PhTyp

This repo is a Typst template of Harbin Institute of Technology(Shenzhen) Physics lab report.

## 🏠 Architecture

```sh
.
├── README.md
├── assets
│   └── images               # Directory used for store images
├── layout
│   └── page.typ             # Define the page's style
├── template.pdf 
├── template.typ             # The main article
├── themes
│   └── theme.typ            # Define the font style and size
└── utils
    ├── head_element.typ     # Some necessary illustration
    ├── image.typ            # How the image is demonstarted
    ├── question_list.typ    # Question list for each section
    ├── tables.typ           # Define the table's style
    └── two_line.typ         # An auxiliary
```

If you want to use this template to product report, all the writing changes should be done in `template.typ`.

## ❓ Issues

- [ ] Math symbols can't be rendered correctly with underline. ([Underline doesn't apply to inline math · Issue #1043 · typst/typst ](https://github.com/typst/typst/issues/1043))
- [ ] The signature image has encountered some incorrect align. 
- [ ] When using `SimSun` and other CJK fonts, there is an align mistake.([CJK have some about aligned questions · Issue #3710 · typst/typst](https://github.com/typst/typst/issues/3710))

## 🙏 Acknowledgement

I had learnt from these repos when developing this project.

- [nju-lug/nju-thesis-typst](https://github.com/nju-lug/nju-thesis-typst/)
- [chosertech/HIT-Thesis-Typst](https://github.com/chosertech/HIT-Thesis-Typst)
- [Doctxing/phytex](https://github.com/Doctxing/phytex)
