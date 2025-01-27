.class public Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;
.super Ljava/lang/Object;
.source "CssDeclarationValidationMaster.java"


# static fields
.field private static final DEFAULT_VALIDATORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/css/validate/ICssDeclarationValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 76
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const-string/jumbo v4, "transparent"

    const-string v5, "initial"

    const-string v6, "inherit"

    const-string v7, "currentcolor"

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssColorValidator;

    invoke-direct {v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssColorValidator;-><init>()V

    const/4 v7, 0x1

    aput-object v3, v2, v7

    invoke-direct {v0, v2}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    .line 80
    .local v0, "colorCommonValidator":Lcom/itextpdf/styledxmlparser/css/validate/ICssDeclarationValidator;
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const-string v3, "normal"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    .line 81
    .local v2, "normalValidator":Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const-string v8, "larger"

    const-string/jumbo v9, "smaller"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    .line 83
    .local v3, "relativeSizeValidator":Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;
    new-instance v8, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    new-array v9, v4, [Ljava/lang/String;

    invoke-direct {v8, v9}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    .line 84
    .local v8, "absoluteSizeValidator":Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;
    sget-object v9, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->FONT_ABSOLUTE_SIZE_KEYWORDS_VALUES:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;->addAllowedValues(Ljava/util/Collection;)V

    .line 85
    new-instance v9, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const-string/jumbo v10, "unset"

    filled-new-array {v6, v5, v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    .line 88
    .local v9, "inheritInitialUnsetValidator":Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->DEFAULT_VALIDATORS:Ljava/util/Map;

    .line 89
    const-string v11, "background-color"

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v11, "color"

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v11, "border-color"

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v11, "border-bottom-color"

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v11, "border-top-color"

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v11, "border-left-color"

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v11, "border-right-color"

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v11, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v12, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const-string v13, "left"

    const-string/jumbo v14, "right"

    const-string v15, "none"

    const-string v7, "center"

    filled-new-array {v13, v14, v15, v6, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v12, v7}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    invoke-direct {v11, v12}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v7, "float"

    invoke-interface {v10, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v7, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v11, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const-string v12, "auto"

    const-string v4, "always"

    const-string v1, "avoid"

    move-object/from16 v16, v0

    .end local v0    # "colorCommonValidator":Lcom/itextpdf/styledxmlparser/css/validate/ICssDeclarationValidator;
    .local v16, "colorCommonValidator":Lcom/itextpdf/styledxmlparser/css/validate/ICssDeclarationValidator;
    filled-new-array {v12, v4, v1, v13, v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    invoke-direct {v7, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v0, "page-break-before"

    invoke-interface {v10, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v7, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    filled-new-array {v12, v4, v1, v13, v14}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    invoke-direct {v0, v7}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v1, "page-break-after"

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    const/4 v1, 0x2

    new-array v4, v1, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    filled-new-array {v5, v6, v15}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v1, v4, v5

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssQuotesValidator;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssQuotesValidator;-><init>()V

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-direct {v0, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string/jumbo v1, "quotes"

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssTransformValidator;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssTransformValidator;-><init>()V

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string/jumbo v1, "transform"

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    const/4 v1, 0x4

    new-array v4, v1, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;-><init>(Z)V

    aput-object v5, v4, v6

    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;

    invoke-direct {v5, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;-><init>(Z)V

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const/4 v7, 0x3

    aput-object v8, v4, v7

    invoke-direct {v0, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v4, "font-size"

    invoke-interface {v10, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v4, v5, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v11, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;

    invoke-direct {v11, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;-><init>(Z)V

    const/4 v13, 0x0

    aput-object v11, v4, v13

    aput-object v2, v4, v6

    invoke-direct {v0, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string/jumbo v4, "word-spacing"

    invoke-interface {v10, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v4, v5, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;

    invoke-direct {v5, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;-><init>(Z)V

    aput-object v5, v4, v13

    aput-object v2, v4, v6

    invoke-direct {v0, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v4, "letter-spacing"

    invoke-interface {v10, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v4, v7, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;

    invoke-direct {v5, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;-><init>(Z)V

    aput-object v5, v4, v13

    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;

    invoke-direct {v5, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;-><init>(Z)V

    aput-object v5, v4, v6

    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const-string v6, "each-line"

    const-string v11, "hanging"

    const-string v13, "hanging each-line"

    filled-new-array {v6, v11, v13}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-direct {v0, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string/jumbo v4, "text-indent"

    invoke-interface {v10, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    const/4 v4, 0x5

    new-array v5, v4, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssNumberValueValidator;

    const/4 v11, 0x0

    invoke-direct {v6, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssNumberValueValidator;-><init>(Z)V

    aput-object v6, v5, v11

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;

    invoke-direct {v6, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;-><init>(Z)V

    const/4 v13, 0x1

    aput-object v6, v5, v13

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;

    invoke-direct {v6, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;-><init>(Z)V

    const/4 v13, 0x2

    aput-object v6, v5, v13

    aput-object v2, v5, v7

    aput-object v9, v5, v1

    invoke-direct {v0, v5}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v5, "line-height"

    invoke-interface {v10, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v5, v1, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;

    invoke-direct {v6, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;-><init>(Z)V

    aput-object v6, v5, v11

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;

    invoke-direct {v6, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;-><init>(Z)V

    const/4 v13, 0x1

    aput-object v6, v5, v13

    const/4 v6, 0x2

    aput-object v2, v5, v6

    aput-object v9, v5, v7

    invoke-direct {v0, v5}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v5, "column-gap"

    invoke-interface {v10, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v5, v1, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;

    invoke-direct {v6, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;-><init>(Z)V

    aput-object v6, v5, v11

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;

    invoke-direct {v6, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;-><init>(Z)V

    const/4 v13, 0x1

    aput-object v6, v5, v13

    const/4 v6, 0x2

    aput-object v2, v5, v6

    aput-object v9, v5, v7

    invoke-direct {v0, v5}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string/jumbo v5, "row-gap"

    invoke-interface {v10, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v5, v6, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v13, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssNumberValueValidator;

    invoke-direct {v13, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssNumberValueValidator;-><init>(Z)V

    aput-object v13, v5, v11

    const/4 v13, 0x1

    aput-object v9, v5, v13

    invoke-direct {v0, v5}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v5, "flex-grow"

    invoke-interface {v10, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v5, v6, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssNumberValueValidator;

    invoke-direct {v6, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssNumberValueValidator;-><init>(Z)V

    aput-object v6, v5, v11

    aput-object v9, v5, v13

    invoke-direct {v0, v5}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v5, "flex-shrink"

    invoke-interface {v10, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const-string v5, "content"

    const-string v6, "min-content"

    const-string v11, "max-content"

    const-string v13, "fit-content"

    filled-new-array {v12, v5, v6, v11, v13}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    .line 144
    .local v0, "flexBasisEnumValidator":Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v6, v7, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v11, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;-><init>(Z)V

    aput-object v11, v6, v12

    new-instance v11, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;

    invoke-direct {v11, v12}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;-><init>(Z)V

    const/4 v12, 0x1

    aput-object v11, v6, v12

    const/4 v11, 0x2

    aput-object v0, v6, v11

    invoke-direct {v5, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v6, "flex-basis"

    invoke-interface {v10, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;

    const-string v11, "background-repeat"

    invoke-direct {v6, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;

    const-string v11, "background-image"

    invoke-direct {v6, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;

    const-string v11, "background-position-x"

    invoke-direct {v6, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;

    const-string v11, "background-position-y"

    invoke-direct {v6, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;

    const-string v11, "background-size"

    invoke-direct {v6, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;

    const-string v11, "background-clip"

    invoke-direct {v6, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;

    const-string v11, "background-origin"

    invoke-direct {v6, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v6, "background-origin"

    invoke-interface {v10, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/ArrayDataTypeValidator;

    new-instance v11, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBlendModeValidator;

    invoke-direct {v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBlendModeValidator;-><init>()V

    invoke-direct {v6, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/ArrayDataTypeValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    invoke-direct {v5, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v6, "background-blend-mode"

    invoke-interface {v10, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v6, v7, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v11, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const-string v12, "anywhere"

    const-string v13, "break-word"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    const/4 v12, 0x0

    aput-object v11, v6, v12

    const/4 v11, 0x1

    aput-object v2, v6, v11

    const/4 v11, 0x2

    aput-object v9, v6, v11

    invoke-direct {v5, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v6, "overflow-wrap"

    invoke-interface {v10, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v6, v7, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v11, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const-string v12, "break-all"

    const-string v13, "keep-all"

    const-string v14, "break-word"

    filled-new-array {v12, v13, v14}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    const/4 v12, 0x0

    aput-object v11, v6, v12

    const/4 v11, 0x1

    aput-object v2, v6, v11

    const/4 v11, 0x2

    aput-object v9, v6, v11

    invoke-direct {v5, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string/jumbo v6, "word-break"

    invoke-interface {v10, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v6, v11, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v11, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const-string/jumbo v12, "row"

    const-string/jumbo v13, "row-reverse"

    const-string v14, "column"

    const-string v15, "column-reverse"

    filled-new-array {v12, v13, v14, v15}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    const/4 v12, 0x0

    aput-object v11, v6, v12

    const/4 v11, 0x1

    aput-object v9, v6, v11

    invoke-direct {v5, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v6, "flex-direction"

    invoke-interface {v10, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    const/4 v6, 0x2

    new-array v11, v6, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const-string v12, "nowrap"

    const-string/jumbo v13, "wrap"

    const-string/jumbo v14, "wrap-reverse"

    filled-new-array {v12, v13, v14}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v6, 0x1

    aput-object v9, v11, v6

    invoke-direct {v5, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v6, "flex-wrap"

    invoke-interface {v10, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v6, v1, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    aput-object v2, v6, v12

    new-instance v11, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const-string v12, "baseline"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    .line 180
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string v13, "first"

    const-string v14, "last"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    .line 181
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    const/4 v12, 0x1

    aput-object v11, v6, v12

    new-instance v11, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const-string/jumbo v17, "stretch"

    const-string v18, "center"

    const-string/jumbo v19, "start"

    const-string v20, "end"

    const-string v21, "flex-start"

    const-string v22, "flex-end"

    const-string/jumbo v23, "self-start"

    const-string/jumbo v24, "self-end"

    filled-new-array/range {v17 .. v24}, [Ljava/lang/String;

    move-result-object v12

    .line 183
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string/jumbo v13, "safe"

    const-string/jumbo v14, "unsafe"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v15

    .line 186
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v11, v12, v15}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    const/4 v12, 0x2

    aput-object v11, v6, v12

    aput-object v9, v6, v7

    invoke-direct {v5, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    .line 178
    const-string v6, "align-items"

    invoke-interface {v10, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v6, v7, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v11, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const-string/jumbo v17, "space-around"

    const-string/jumbo v18, "space-between"

    const-string/jumbo v19, "space-evenly"

    const-string/jumbo v20, "stretch"

    const-string v21, "normal"

    const-string v22, "left"

    const-string/jumbo v23, "right"

    filled-new-array/range {v17 .. v23}, [Ljava/lang/String;

    move-result-object v12

    .line 189
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>(Ljava/util/Collection;)V

    const/4 v12, 0x0

    aput-object v11, v6, v12

    new-instance v11, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const-string v17, "center"

    const-string/jumbo v18, "start"

    const-string v19, "flex-start"

    const-string/jumbo v20, "self-start"

    const-string v21, "end"

    const-string v22, "flex-end"

    const-string/jumbo v23, "self-end"

    filled-new-array/range {v17 .. v23}, [Ljava/lang/String;

    move-result-object v12

    .line 193
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v15

    .line 197
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v11, v12, v15}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    const/4 v12, 0x1

    aput-object v11, v6, v12

    const/4 v11, 0x2

    aput-object v9, v6, v11

    invoke-direct {v5, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    .line 188
    const-string v6, "justify-content"

    invoke-interface {v10, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v4, v4, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    const/4 v6, 0x0

    aput-object v2, v4, v6

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const-string v11, "baseline"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    .line 202
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v12, "first"

    const-string v15, "last"

    filled-new-array {v12, v15}, [Ljava/lang/String;

    move-result-object v12

    .line 203
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v6, v11, v12}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    const/4 v11, 0x1

    aput-object v6, v4, v11

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const-string/jumbo v17, "stretch"

    const-string v18, "center"

    const-string/jumbo v19, "start"

    const-string v20, "end"

    const-string v21, "flex-start"

    const-string v22, "flex-end"

    const-string/jumbo v23, "self-start"

    const-string/jumbo v24, "self-end"

    const-string v25, "left"

    const-string/jumbo v26, "right"

    filled-new-array/range {v17 .. v26}, [Ljava/lang/String;

    move-result-object v11

    .line 205
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v12

    .line 209
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v6, v11, v12}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    const/4 v11, 0x2

    aput-object v6, v4, v11

    new-instance v6, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const-string v11, "legacy"

    const-string v12, "legacy left"

    const-string v13, "legacy right"

    const-string v14, "legacy center"

    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    aput-object v6, v4, v7

    aput-object v9, v4, v1

    invoke-direct {v5, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    .line 200
    const-string v1, "justify-items"

    invoke-interface {v10, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .end local v0    # "flexBasisEnumValidator":Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;
    .end local v2    # "normalValidator":Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;
    .end local v3    # "relativeSizeValidator":Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;
    .end local v8    # "absoluteSizeValidator":Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;
    .end local v9    # "inheritInitialUnsetValidator":Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;
    .end local v16    # "colorCommonValidator":Lcom/itextpdf/styledxmlparser/css/validate/ICssDeclarationValidator;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    return-void
.end method

.method public static checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z
    .locals 2
    .param p0, "declaration"    # Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 230
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->DEFAULT_VALIDATORS:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/validate/ICssDeclarationValidator;

    .line 231
    .local v0, "validator":Lcom/itextpdf/styledxmlparser/css/validate/ICssDeclarationValidator;
    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/itextpdf/styledxmlparser/css/validate/ICssDeclarationValidator;->isValid(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method
