.class synthetic Lcom/itextpdf/layout/renderer/FlexUtil$1;
.super Ljava/lang/Object;
.source "FlexUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/renderer/FlexUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$itextpdf$layout$property$AlignmentPropertyValue:[I

.field static final synthetic $SwitchMap$com$itextpdf$layout$property$JustifyContent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 556
    invoke-static {}, Lcom/itextpdf/layout/property/JustifyContent;->values()[Lcom/itextpdf/layout/property/JustifyContent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$JustifyContent:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/itextpdf/layout/property/JustifyContent;->RIGHT:Lcom/itextpdf/layout/property/JustifyContent;

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/JustifyContent;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$JustifyContent:[I

    sget-object v3, Lcom/itextpdf/layout/property/JustifyContent;->END:Lcom/itextpdf/layout/property/JustifyContent;

    invoke-virtual {v3}, Lcom/itextpdf/layout/property/JustifyContent;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$JustifyContent:[I

    sget-object v4, Lcom/itextpdf/layout/property/JustifyContent;->SELF_END:Lcom/itextpdf/layout/property/JustifyContent;

    invoke-virtual {v4}, Lcom/itextpdf/layout/property/JustifyContent;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$JustifyContent:[I

    sget-object v5, Lcom/itextpdf/layout/property/JustifyContent;->FLEX_END:Lcom/itextpdf/layout/property/JustifyContent;

    invoke-virtual {v5}, Lcom/itextpdf/layout/property/JustifyContent;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    :goto_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$JustifyContent:[I

    sget-object v6, Lcom/itextpdf/layout/property/JustifyContent;->CENTER:Lcom/itextpdf/layout/property/JustifyContent;

    invoke-virtual {v6}, Lcom/itextpdf/layout/property/JustifyContent;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    :goto_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$JustifyContent:[I

    sget-object v7, Lcom/itextpdf/layout/property/JustifyContent;->NORMAL:Lcom/itextpdf/layout/property/JustifyContent;

    invoke-virtual {v7}, Lcom/itextpdf/layout/property/JustifyContent;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v6

    :goto_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$JustifyContent:[I

    sget-object v8, Lcom/itextpdf/layout/property/JustifyContent;->STRETCH:Lcom/itextpdf/layout/property/JustifyContent;

    invoke-virtual {v8}, Lcom/itextpdf/layout/property/JustifyContent;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v7

    :goto_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$JustifyContent:[I

    sget-object v9, Lcom/itextpdf/layout/property/JustifyContent;->START:Lcom/itextpdf/layout/property/JustifyContent;

    invoke-virtual {v9}, Lcom/itextpdf/layout/property/JustifyContent;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v8

    :goto_7
    const/16 v8, 0x9

    :try_start_8
    sget-object v9, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$JustifyContent:[I

    sget-object v10, Lcom/itextpdf/layout/property/JustifyContent;->LEFT:Lcom/itextpdf/layout/property/JustifyContent;

    invoke-virtual {v10}, Lcom/itextpdf/layout/property/JustifyContent;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v9

    :goto_8
    const/16 v9, 0xa

    :try_start_9
    sget-object v10, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$JustifyContent:[I

    sget-object v11, Lcom/itextpdf/layout/property/JustifyContent;->SELF_START:Lcom/itextpdf/layout/property/JustifyContent;

    invoke-virtual {v11}, Lcom/itextpdf/layout/property/JustifyContent;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v10

    :goto_9
    :try_start_a
    sget-object v10, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$JustifyContent:[I

    sget-object v11, Lcom/itextpdf/layout/property/JustifyContent;->FLEX_START:Lcom/itextpdf/layout/property/JustifyContent;

    invoke-virtual {v11}, Lcom/itextpdf/layout/property/JustifyContent;->ordinal()I

    move-result v11

    const/16 v12, 0xb

    aput v12, v10, v11
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v10

    .line 522
    :goto_a
    invoke-static {}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->values()[Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$AlignmentPropertyValue:[I

    :try_start_b
    sget-object v11, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->SELF_END:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    invoke-virtual {v11}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v1

    :goto_b
    :try_start_c
    sget-object v1, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$AlignmentPropertyValue:[I

    sget-object v10, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->END:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    invoke-virtual {v10}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->ordinal()I

    move-result v10

    aput v0, v1, v10
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v0

    :goto_c
    :try_start_d
    sget-object v0, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$AlignmentPropertyValue:[I

    sget-object v1, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->FLEX_END:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v0

    :goto_d
    :try_start_e
    sget-object v0, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$AlignmentPropertyValue:[I

    sget-object v1, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->CENTER:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v0

    :goto_e
    :try_start_f
    sget-object v0, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$AlignmentPropertyValue:[I

    sget-object v1, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->START:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v0

    :goto_f
    :try_start_10
    sget-object v0, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$AlignmentPropertyValue:[I

    sget-object v1, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->BASELINE:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v0

    :goto_10
    :try_start_11
    sget-object v0, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$AlignmentPropertyValue:[I

    sget-object v1, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->SELF_START:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v0

    :goto_11
    :try_start_12
    sget-object v0, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$AlignmentPropertyValue:[I

    sget-object v1, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->STRETCH:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v0

    :goto_12
    :try_start_13
    sget-object v0, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$AlignmentPropertyValue:[I

    sget-object v1, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->NORMAL:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v0

    :goto_13
    :try_start_14
    sget-object v0, Lcom/itextpdf/layout/renderer/FlexUtil$1;->$SwitchMap$com$itextpdf$layout$property$AlignmentPropertyValue:[I

    sget-object v1, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->FLEX_START:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v0

    :goto_14
    return-void
.end method
