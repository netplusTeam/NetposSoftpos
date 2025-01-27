.class Lorg/jline/builtins/Commands$Colors;
.super Ljava/lang/Object;
.source "Commands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Commands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Colors"
.end annotation


# static fields
.field private static final COLORS_16:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final COLORS_24BIT:Ljava/lang/String; = "[0-9a-fA-F]{6}"


# instance fields
.field b:I

.field private fixedBg:Z

.field private fixedStyle:Ljava/lang/String;

.field g:I

.field name:Z

.field private final out:Ljava/io/PrintStream;

.field r:I

.field rgb:Z

.field private final terminal:Lorg/jline/terminal/Terminal;


# direct methods
.method public static synthetic $r8$lambda$2BPf4oklMhmZxqOxrFswZcPv9WU(Lorg/jline/builtins/Commands$Colors;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/builtins/Commands$Colors;->getStyle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 16

    .line 1090
    const-string v0, "black"

    const-string v1, "red"

    const-string v2, "green"

    const-string v3, "yellow"

    const-string v4, "blue"

    const-string v5, "magenta"

    const-string v6, "cyan"

    const-string v7, "white"

    const-string v8, "!black"

    const-string v9, "!red"

    const-string v10, "!green"

    const-string v11, "!yellow"

    const-string v12, "!blue"

    const-string v13, "!magenta"

    const-string v14, "!cyan"

    const-string v15, "!white"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/jline/builtins/Commands$Colors;->COLORS_16:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/jline/terminal/Terminal;Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p2, "out"    # Ljava/io/PrintStream;

    .line 1100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1101
    iput-object p1, p0, Lorg/jline/builtins/Commands$Colors;->terminal:Lorg/jline/terminal/Terminal;

    .line 1102
    iput-object p2, p0, Lorg/jline/builtins/Commands$Colors;->out:Ljava/io/PrintStream;

    .line 1103
    return-void
.end method

.method private addLeftPadding(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "width"    # I
    .param p2, "field"    # Ljava/lang/String;

    .line 1162
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 1163
    .local v0, "s":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1164
    .local v1, "lp":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1165
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1167
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private addPadding(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "width"    # I
    .param p2, "field"    # Ljava/lang/String;

    .line 1148
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 1149
    .local v0, "s":I
    div-int/lit8 v1, v0, 0x2

    .line 1150
    .local v1, "left":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1151
    .local v2, "lp":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1152
    .local v3, "rp":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const-string v5, " "

    if-ge v4, v1, :cond_0

    .line 1153
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1155
    .end local v4    # "i":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    sub-int v6, v0, v1

    if-ge v4, v6, :cond_1

    .line 1156
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1158
    .end local v4    # "i":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private foreground(I)Ljava/lang/String;
    .locals 2
    .param p1, "idx"    # I

    .line 1133
    const-string v0, "w"

    .line 1134
    .local v0, "fg":Ljava/lang/String;
    const/4 v1, 0x6

    if-le p1, v1, :cond_0

    const/16 v1, 0x10

    if-lt p1, v1, :cond_7

    :cond_0
    const/16 v1, 0x21

    if-le p1, v1, :cond_1

    const/16 v1, 0x34

    if-lt p1, v1, :cond_7

    :cond_1
    const/16 v1, 0x45

    if-le p1, v1, :cond_2

    const/16 v1, 0x58

    if-lt p1, v1, :cond_7

    :cond_2
    const/16 v1, 0x69

    if-le p1, v1, :cond_3

    const/16 v1, 0x7c

    if-lt p1, v1, :cond_7

    :cond_3
    const/16 v1, 0x8d

    if-le p1, v1, :cond_4

    const/16 v1, 0xa0

    if-lt p1, v1, :cond_7

    :cond_4
    const/16 v1, 0xb1

    if-le p1, v1, :cond_5

    const/16 v1, 0xc4

    if-lt p1, v1, :cond_7

    :cond_5
    const/16 v1, 0xd5

    if-le p1, v1, :cond_6

    const/16 v1, 0xe8

    if-lt p1, v1, :cond_7

    :cond_6
    const/16 v1, 0xf3

    if-le p1, v1, :cond_8

    .line 1142
    :cond_7
    const-string v0, "b"

    .line 1144
    :cond_8
    return-object v0
.end method

.method private getStyle(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "color"    # Ljava/lang/String;

    .line 1107
    const/16 v0, 0x20

    .line 1108
    .local v0, "fg":C
    iget-boolean v1, p0, Lorg/jline/builtins/Commands$Colors;->name:Z

    const-string v2, "fg:"

    const-string v3, "bg:"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 1109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, p0, Lorg/jline/builtins/Commands$Colors;->fixedBg:Z

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1110
    .local v1, "out":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_4

    .line 1111
    .end local v1    # "out":Ljava/lang/String;
    :cond_1
    iget-boolean v1, p0, Lorg/jline/builtins/Commands$Colors;->rgb:Z

    if-eqz v1, :cond_3

    .line 1112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lorg/jline/builtins/Commands$Colors;->fixedBg:Z

    if-eqz v2, :cond_2

    const-string v2, "fg-rgb:"

    goto :goto_1

    :cond_2
    const-string v2, "bg-rgb:"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1113
    .restart local v1    # "out":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 1114
    .end local v1    # "out":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "\\d+"

    invoke-virtual {v1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lorg/jline/builtins/Commands$Colors;->fixedBg:Z

    if-eqz v2, :cond_4

    const-string v2, "38;5;"

    goto :goto_2

    :cond_4
    const-string v2, "48;5;"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1116
    .restart local v1    # "out":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 1118
    .end local v1    # "out":Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lorg/jline/builtins/Commands$Colors;->fixedBg:Z

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move-object v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1120
    .restart local v1    # "out":Ljava/lang/String;
    :goto_4
    iget-object v2, p0, Lorg/jline/builtins/Commands$Colors;->fixedStyle:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 1121
    const-string v2, "!"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "white"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v2, 0x62

    if-ne v0, v2, :cond_7

    goto :goto_5

    .line 1124
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",fg:!white"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 1122
    :cond_8
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",fg:black"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 1127
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jline/builtins/Commands$Colors;->fixedStyle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1129
    :goto_6
    return-object v1
.end method

.method private hue2rgb(I)[I
    .locals 19
    .param p1, "degree"    # I

    .line 1363
    move/from16 v0, p1

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 1364
    .local v1, "rgb":[I
    int-to-double v2, v0

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    .line 1365
    .local v2, "hue":D
    int-to-double v4, v0

    const-wide v6, 0x4076800000000000L    # 360.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double/2addr v4, v10

    .line 1366
    .local v4, "a":D
    const-wide/16 v10, 0x0

    cmpl-double v10, v2, v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide v13, 0x406fe00000000000L    # 255.0

    const/16 v15, 0xff

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    if-ltz v10, :cond_0

    cmpg-double v10, v2, v16

    if-gez v10, :cond_0

    .line 1367
    aput v15, v1, v12

    .line 1368
    mul-double/2addr v6, v4

    mul-double/2addr v6, v13

    add-double v16, v4, v16

    div-double v6, v6, v16

    double-to-int v6, v6

    aput v6, v1, v11

    goto/16 :goto_0

    .line 1369
    :cond_0
    cmpl-double v10, v2, v16

    if-ltz v10, :cond_1

    cmpg-double v10, v2, v6

    if-gez v10, :cond_1

    .line 1370
    add-double v16, v4, v16

    mul-double v16, v16, v13

    mul-double/2addr v6, v4

    div-double v6, v16, v6

    double-to-int v6, v6

    aput v6, v1, v12

    .line 1371
    aput v15, v1, v11

    goto :goto_0

    .line 1372
    :cond_1
    cmpl-double v10, v2, v6

    const/16 v18, 0x2

    if-ltz v10, :cond_2

    cmpg-double v10, v2, v8

    if-gez v10, :cond_2

    .line 1373
    aput v15, v1, v11

    .line 1374
    add-double v6, v4, v16

    mul-double/2addr v6, v13

    sub-double v16, v16, v4

    div-double v6, v6, v16

    double-to-int v6, v6

    aput v6, v1, v18

    goto :goto_0

    .line 1375
    :cond_2
    cmpl-double v8, v2, v8

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    if-ltz v8, :cond_3

    cmpg-double v8, v2, v9

    if-gez v8, :cond_3

    .line 1376
    sub-double v6, v16, v4

    mul-double/2addr v6, v13

    add-double v16, v4, v16

    div-double v6, v6, v16

    double-to-int v6, v6

    aput v6, v1, v11

    .line 1377
    aput v15, v1, v18

    goto :goto_0

    .line 1378
    :cond_3
    cmpl-double v8, v2, v9

    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    if-ltz v8, :cond_4

    cmpg-double v8, v2, v9

    if-gtz v8, :cond_4

    .line 1379
    sub-double v8, v4, v16

    mul-double/2addr v8, v13

    mul-double/2addr v6, v4

    div-double/2addr v8, v6

    double-to-int v6, v8

    aput v6, v1, v12

    .line 1380
    aput v15, v1, v18

    goto :goto_0

    .line 1381
    :cond_4
    cmpl-double v6, v2, v9

    if-lez v6, :cond_5

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    cmpg-double v6, v2, v6

    if-gtz v6, :cond_5

    .line 1382
    aput v15, v1, v12

    .line 1383
    const-wide v6, 0x407fe00000000000L    # 510.0

    mul-double/2addr v6, v4

    sub-double v8, v4, v16

    div-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v1, v18

    .line 1385
    :cond_5
    :goto_0
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic lambda$retrieveColorNames$0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 1183
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$retrieveColorNames$1(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 1184
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private retrieveColorNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1180
    new-instance v0, Lorg/jline/builtins/Source$ResourceSource;

    const-string v1, "/org/jline/utils/colors.txt"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/builtins/Source$ResourceSource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jline/builtins/Source$ResourceSource;->read()Ljava/io/InputStream;

    move-result-object v0

    .line 1181
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1182
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda3;-><init>()V

    .line 1183
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda4;-><init>()V

    .line 1184
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 1185
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1186
    .local v2, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v1    # "br":Ljava/io/BufferedReader;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1187
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_0
    return-object v2

    .line 1180
    .end local v2    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "is":Ljava/io/InputStream;
    :goto_0
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
.end method

.method private rgb(J)[I
    .locals 5
    .param p1, "color"    # J

    .line 1355
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1356
    .local v0, "rgb":[I
    const/16 v1, 0x10

    shr-long v1, p1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1357
    const/16 v1, 0x8

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 1358
    and-long v1, p1, v3

    long-to-int v1, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 1359
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private rgb2hsl(III)[I
    .locals 19
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 1389
    move/from16 v0, p3

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 1390
    .local v1, "hsl":[I
    const/4 v2, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz v0, :cond_1

    .line 1391
    :cond_0
    const-wide v3, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    sub-int v7, p2, v0

    int-to-double v7, v7

    mul-double/2addr v5, v7

    mul-int/lit8 v7, p1, 0x2

    sub-int v7, v7, p2

    sub-int/2addr v7, v0

    int-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    aput v3, v1, v2

    .line 1392
    :goto_0
    aget v3, v1, v2

    if-gez v3, :cond_1

    .line 1393
    aget v3, v1, v2

    add-int/lit16 v3, v3, 0x168

    aput v3, v1, v2

    goto :goto_0

    .line 1396
    :cond_1
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x406fe00000000000L    # 255.0

    div-double/2addr v3, v5

    .line 1397
    .local v3, "mx":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v7, v5

    .line 1398
    .local v7, "mn":D
    add-double v5, v3, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v9

    .line 1399
    .local v5, "l":D
    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    cmpl-double v12, v5, v12

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    if-eqz v12, :cond_3

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v5, v15

    if-nez v12, :cond_2

    goto :goto_1

    :cond_2
    sub-double v17, v3, v7

    mul-double v17, v17, v13

    mul-double/2addr v9, v5

    sub-double/2addr v9, v15

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    sub-double/2addr v15, v9

    div-double v17, v17, v15

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v2, v9

    :cond_3
    :goto_1
    aput v2, v1, v11

    .line 1400
    mul-double/2addr v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v2, v9

    const/4 v9, 0x2

    aput v2, v1, v9

    .line 1401
    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private setFixedStyle(Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Ljava/lang/String;

    .line 1171
    iput-object p1, p0, Lorg/jline/builtins/Commands$Colors;->fixedStyle:Ljava/lang/String;

    .line 1172
    if-eqz p1, :cond_1

    const-string v0, "b:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "b-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1173
    const-string v0, "bg:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bg-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "background"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1174
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/builtins/Commands$Colors;->fixedBg:Z

    .line 1176
    :cond_1
    return-void
.end method


# virtual methods
.method getStyleRGB(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "s"    # Ljava/lang/String;

    .line 1405
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jline/builtins/Commands$Colors;->fixedStyle:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v6, "#%02x%02x%02x"

    const-string v7, "bg-rgb:"

    if-nez v1, :cond_1

    .line 1406
    iget v1, v0, Lorg/jline/builtins/Commands$Colors;->r:I

    int-to-double v8, v1

    const-wide v10, 0x406fe00000000000L    # 255.0

    div-double/2addr v8, v10

    const-wide v12, 0x400199999999999aL    # 2.2

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    .line 1407
    .local v8, "ry":D
    iget v1, v0, Lorg/jline/builtins/Commands$Colors;->b:I

    int-to-double v14, v1

    div-double/2addr v14, v10

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    .line 1408
    .local v14, "by":D
    iget v1, v0, Lorg/jline/builtins/Commands$Colors;->g:I

    int-to-double v2, v1

    div-double/2addr v2, v10

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 1409
    .local v1, "gy":D
    const-wide v10, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v10, v8

    const-wide v12, 0x3fe6e219652bd3c3L    # 0.7151

    mul-double/2addr v12, v1

    add-double/2addr v10, v12

    const-wide v12, 0x3fb27525460aa64cL    # 0.0721

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    .line 1410
    .local v10, "y":D
    const-string v3, "black"

    .line 1411
    .local v3, "fg":Ljava/lang/String;
    const-wide v12, 0x3ff0cccccccccccdL    # 1.05

    const-wide v16, 0x3fa999999999999aL    # 0.05

    add-double v18, v10, v16

    div-double v12, v12, v18

    add-double v18, v10, v16

    div-double v18, v18, v16

    cmpl-double v12, v12, v18

    if-lez v12, :cond_0

    .line 1412
    const-string v3, "white"

    .line 1414
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    iget v12, v0, Lorg/jline/builtins/Commands$Colors;->r:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v4

    iget v4, v0, Lorg/jline/builtins/Commands$Colors;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v5, v12

    iget v4, v0, Lorg/jline/builtins/Commands$Colors;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v5, v12

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",fg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1416
    .end local v1    # "gy":D
    .end local v3    # "fg":Ljava/lang/String;
    .end local v8    # "ry":D
    .end local v10    # "y":D
    .end local v14    # "by":D
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, v0, Lorg/jline/builtins/Commands$Colors;->fixedBg:Z

    if-eqz v2, :cond_2

    const-string v7, "fg-rgb:"

    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, v0, Lorg/jline/builtins/Commands$Colors;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, v0, Lorg/jline/builtins/Commands$Colors;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, v0, Lorg/jline/builtins/Commands$Colors;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/jline/builtins/Commands$Colors;->fixedStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public printColor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 45
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1421
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v2}, Lorg/jline/builtins/Commands$Colors;->setFixedStyle(Ljava/lang/String;)V

    .line 1423
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 1424
    .local v3, "zoom":D
    const/4 v5, 0x3

    new-array v6, v5, [I

    fill-array-data v6, :array_0

    .line 1425
    .local v6, "rgb":[I
    const-string v7, "[0-9a-fA-F]{6}"

    invoke-virtual {v1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "#"

    const/16 v10, 0x168

    const/16 v11, 0x10

    const/4 v12, 0x1

    if-eqz v8, :cond_0

    .line 1426
    invoke-static {v1, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    invoke-direct {v0, v7, v8}, Lorg/jline/builtins/Commands$Colors;->rgb(J)[I

    move-result-object v6

    .line 1427
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    goto/16 :goto_9

    .line 1428
    :cond_0
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "x"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1429
    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    invoke-direct {v0, v7, v8}, Lorg/jline/builtins/Commands$Colors;->rgb(J)[I

    move-result-object v6

    .line 1430
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    goto/16 :goto_9

    .line 1431
    :cond_2
    sget-object v7, Lorg/jline/builtins/Commands$Colors;->COLORS_16:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1432
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v11, :cond_4

    .line 1433
    sget-object v8, Lorg/jline/builtins/Commands$Colors;->COLORS_16:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1434
    sget-object v8, Lorg/jline/utils/Colors;->DEFAULT_COLORS_256:[I

    aget v8, v8, v7

    int-to-long v13, v8

    invoke-direct {v0, v13, v14}, Lorg/jline/builtins/Commands$Colors;->rgb(J)[I

    move-result-object v6

    .line 1435
    goto :goto_1

    .line 1432
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v7    # "i":I
    :cond_4
    :goto_1
    goto/16 :goto_9

    .line 1438
    :cond_5
    const-string v7, "hue[1-3]?[0-9]{1,2}"

    invoke-virtual {v1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "Color not found: "

    if-eqz v7, :cond_7

    .line 1439
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1440
    .local v7, "hueAngle":I
    if-gt v7, v10, :cond_6

    .line 1443
    invoke-direct {v0, v7}, Lorg/jline/builtins/Commands$Colors;->hue2rgb(I)[I

    move-result-object v6

    goto/16 :goto_9

    .line 1441
    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1444
    .end local v7    # "hueAngle":I
    :cond_7
    const-string v7, "[a-z0-9]+"

    invoke-virtual {v1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1445
    invoke-direct/range {p0 .. p0}, Lorg/jline/builtins/Commands$Colors;->retrieveColorNames()Ljava/util/List;

    move-result-object v7

    .line 1446
    .local v7, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    const/16 v13, 0x100

    if-eqz v11, :cond_a

    .line 1447
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v13, :cond_9

    .line 1448
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1449
    sget-object v11, Lorg/jline/utils/Colors;->DEFAULT_COLORS_256:[I

    aget v11, v11, v8

    int-to-long v13, v11

    invoke-direct {v0, v13, v14}, Lorg/jline/builtins/Commands$Colors;->rgb(J)[I

    move-result-object v6

    .line 1450
    goto :goto_3

    .line 1447
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v8    # "i":I
    :cond_9
    :goto_3
    goto :goto_8

    .line 1454
    :cond_a
    const/4 v11, 0x0

    .line 1455
    .local v11, "found":Z
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    if-ge v14, v13, :cond_c

    .line 1456
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1457
    sget-object v15, Lorg/jline/utils/Colors;->DEFAULT_COLORS_256:[I

    aget v15, v15, v14

    move/from16 v17, v11

    .end local v11    # "found":Z
    .local v17, "found":Z
    int-to-long v10, v15

    invoke-direct {v0, v10, v11}, Lorg/jline/builtins/Commands$Colors;->rgb(J)[I

    move-result-object v6

    .line 1458
    const/4 v11, 0x1

    .line 1459
    .end local v17    # "found":Z
    .restart local v11    # "found":Z
    goto :goto_5

    .line 1455
    :cond_b
    move/from16 v17, v11

    .end local v11    # "found":Z
    .restart local v17    # "found":Z
    add-int/lit8 v14, v14, 0x1

    const/16 v10, 0x168

    goto :goto_4

    .end local v17    # "found":Z
    .restart local v11    # "found":Z
    :cond_c
    move/from16 v17, v11

    .line 1462
    .end local v14    # "i":I
    :goto_5
    if-nez v11, :cond_e

    .line 1463
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6
    if-ge v10, v13, :cond_e

    .line 1464
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1465
    sget-object v13, Lorg/jline/utils/Colors;->DEFAULT_COLORS_256:[I

    aget v13, v13, v10

    int-to-long v13, v13

    invoke-direct {v0, v13, v14}, Lorg/jline/builtins/Commands$Colors;->rgb(J)[I

    move-result-object v6

    .line 1466
    const/4 v11, 0x1

    .line 1467
    goto :goto_7

    .line 1463
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 1471
    .end local v10    # "i":I
    :cond_e
    :goto_7
    if-eqz v11, :cond_1b

    .line 1475
    .end local v7    # "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "found":Z
    :goto_8
    nop

    .line 1478
    :goto_9
    const-wide/high16 v7, 0x4040000000000000L    # 32.0

    .line 1479
    .local v7, "step":D
    const/16 v10, 0xe

    .line 1480
    .local v10, "barSize":I
    iget-object v11, v0, Lorg/jline/builtins/Commands$Colors;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v11}, Lorg/jline/terminal/Terminal;->getWidth()I

    move-result v11

    .line 1481
    .local v11, "width":I
    const/16 v13, 0x11f

    if-le v11, v13, :cond_f

    .line 1482
    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    .line 1483
    const/16 v10, 0x3a

    goto :goto_a

    .line 1484
    :cond_f
    const/16 v13, 0x8f

    if-le v11, v13, :cond_10

    .line 1485
    const-wide/high16 v7, 0x4030000000000000L    # 16.0

    .line 1486
    const/16 v10, 0x1d

    goto :goto_a

    .line 1487
    :cond_10
    const/16 v13, 0x62

    if-le v11, v13, :cond_11

    .line 1488
    const-wide/high16 v7, 0x4038000000000000L    # 24.0

    .line 1489
    const/16 v10, 0x12

    .line 1491
    :cond_11
    :goto_a
    const/4 v13, 0x0

    aget v14, v6, v13

    iput v14, v0, Lorg/jline/builtins/Commands$Colors;->r:I

    .line 1492
    aget v15, v6, v12

    iput v15, v0, Lorg/jline/builtins/Commands$Colors;->g:I

    .line 1493
    const/16 v17, 0x2

    aget v5, v6, v17

    iput v5, v0, Lorg/jline/builtins/Commands$Colors;->b:I

    .line 1494
    invoke-direct {v0, v14, v15, v5}, Lorg/jline/builtins/Commands$Colors;->rgb2hsl(III)[I

    move-result-object v5

    .line 1495
    .local v5, "hsl":[I
    aget v14, v5, v13

    .line 1496
    .local v14, "hueAngle":I
    iget-object v15, v0, Lorg/jline/builtins/Commands$Colors;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HSL: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v12, v5, v13

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "deg, "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v12, 0x1

    aget v13, v5, v12

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "%, "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v12, v5, v17

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "%"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1497
    aget v2, v5, v17

    const/16 v12, 0x55

    if-gt v2, v12, :cond_12

    aget v2, v5, v17

    const/16 v12, 0xf

    if-lt v2, v12, :cond_12

    const/4 v2, 0x1

    aget v13, v5, v2

    if-ge v13, v12, :cond_13

    .line 1498
    :cond_12
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 1500
    :cond_13
    const-wide/high16 v12, 0x4070000000000000L    # 256.0

    mul-double/2addr v12, v3

    div-double/2addr v12, v7

    .line 1501
    .local v12, "div":D
    move-wide/from16 v20, v7

    .end local v7    # "step":D
    .local v20, "step":D
    div-double v7, v12, v3

    double-to-int v2, v7

    .line 1502
    .local v2, "ndiv":I
    iget v7, v0, Lorg/jline/builtins/Commands$Colors;->r:I

    rsub-int v7, v7, 0xff

    int-to-double v7, v7

    div-double/2addr v7, v12

    .line 1503
    .local v7, "xrs":D
    iget v15, v0, Lorg/jline/builtins/Commands$Colors;->g:I

    rsub-int v15, v15, 0xff

    move-wide/from16 v22, v3

    .end local v3    # "zoom":D
    .local v22, "zoom":D
    int-to-double v3, v15

    div-double/2addr v3, v12

    .line 1504
    .local v3, "xgs":D
    iget v15, v0, Lorg/jline/builtins/Commands$Colors;->b:I

    rsub-int v15, v15, 0xff

    move/from16 v25, v10

    move/from16 v24, v11

    .end local v10    # "barSize":I
    .end local v11    # "width":I
    .local v24, "width":I
    .local v25, "barSize":I
    int-to-double v10, v15

    div-double/2addr v10, v12

    .line 1505
    .local v10, "xbs":D
    new-array v15, v2, [D

    move-object/from16 v26, v5

    .end local v5    # "hsl":[I
    .local v15, "yrs":[D
    .local v26, "hsl":[I
    new-array v5, v2, [D

    .local v5, "ygs":[D
    new-array v1, v2, [D

    .line 1506
    .local v1, "ybs":[D
    move/from16 v27, v14

    .end local v14    # "hueAngle":I
    .local v27, "hueAngle":I
    new-array v14, v2, [D

    move-object/from16 v28, v9

    .local v14, "ro":[D
    new-array v9, v2, [D

    .local v9, "go":[D
    new-array v0, v2, [D

    .line 1507
    .local v0, "bo":[D
    new-instance v29, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct/range {v29 .. v29}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    move-object/from16 v30, v29

    .line 1508
    .local v30, "asb":Lorg/jline/utils/AttributedStringBuilder;
    const/16 v29, 0x0

    move-object/from16 v31, v0

    move/from16 v0, v29

    .local v0, "y":I
    .local v31, "bo":[D
    :goto_b
    move-object/from16 v29, v9

    .end local v9    # "go":[D
    .local v29, "go":[D
    const-string v9, "\n"

    move-object/from16 v32, v9

    const-string v9, " "

    if-ge v0, v2, :cond_16

    .line 1509
    const/16 v33, 0x0

    move-object/from16 v34, v9

    move/from16 v9, v33

    .local v9, "x":I
    :goto_c
    if-ge v9, v2, :cond_15

    .line 1510
    if-nez v0, :cond_14

    .line 1511
    move/from16 v33, v2

    const/16 v19, 0x0

    .end local v2    # "ndiv":I
    .local v33, "ndiv":I
    aget v2, v6, v19

    move/from16 v36, v0

    move-object/from16 v35, v1

    .end local v0    # "y":I
    .end local v1    # "ybs":[D
    .local v35, "ybs":[D
    .local v36, "y":I
    int-to-double v0, v2

    move-wide/from16 v37, v10

    .end local v10    # "xbs":D
    .local v37, "xbs":D
    int-to-double v10, v9

    mul-double/2addr v10, v7

    add-double/2addr v0, v10

    div-double/2addr v0, v12

    aput-wide v0, v15, v9

    .line 1512
    const/4 v0, 0x1

    aget v1, v6, v0

    int-to-double v0, v1

    int-to-double v10, v9

    mul-double/2addr v10, v3

    add-double/2addr v0, v10

    div-double/2addr v0, v12

    aput-wide v0, v5, v9

    .line 1513
    aget v0, v6, v17

    int-to-double v0, v0

    int-to-double v10, v9

    mul-double v10, v10, v37

    add-double/2addr v0, v10

    div-double/2addr v0, v12

    aput-wide v0, v35, v9

    .line 1514
    const/4 v0, 0x0

    aget v1, v6, v0

    int-to-double v0, v1

    int-to-double v10, v9

    mul-double/2addr v10, v7

    add-double/2addr v0, v10

    aput-wide v0, v14, v9

    .line 1515
    const/4 v0, 0x1

    aget v1, v6, v0

    int-to-double v0, v1

    int-to-double v10, v9

    mul-double/2addr v10, v3

    add-double/2addr v0, v10

    aput-wide v0, v29, v9

    .line 1516
    aget v0, v6, v17

    int-to-double v0, v0

    int-to-double v10, v9

    mul-double v10, v10, v37

    add-double/2addr v0, v10

    aput-wide v0, v31, v9

    .line 1517
    aget-wide v0, v14, v9

    double-to-int v0, v0

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    .end local v31    # "bo":[D
    .local v2, "bo":[D
    iput v0, v1, Lorg/jline/builtins/Commands$Colors;->r:I

    .line 1518
    aget-wide v10, v29, v9

    double-to-int v0, v10

    iput v0, v1, Lorg/jline/builtins/Commands$Colors;->g:I

    .line 1519
    aget-wide v10, v2, v9

    double-to-int v0, v10

    iput v0, v1, Lorg/jline/builtins/Commands$Colors;->b:I

    move-wide/from16 v39, v3

    move/from16 v0, v36

    goto :goto_d

    .line 1521
    .end local v33    # "ndiv":I
    .end local v35    # "ybs":[D
    .end local v36    # "y":I
    .end local v37    # "xbs":D
    .restart local v0    # "y":I
    .restart local v1    # "ybs":[D
    .local v2, "ndiv":I
    .restart local v10    # "xbs":D
    .restart local v31    # "bo":[D
    :cond_14
    move/from16 v36, v0

    move-object/from16 v35, v1

    move/from16 v33, v2

    move-wide/from16 v37, v10

    move-object/from16 v2, v31

    move-object/from16 v1, p0

    .end local v0    # "y":I
    .end local v1    # "ybs":[D
    .end local v10    # "xbs":D
    .end local v31    # "bo":[D
    .local v2, "bo":[D
    .restart local v33    # "ndiv":I
    .restart local v35    # "ybs":[D
    .restart local v36    # "y":I
    .restart local v37    # "xbs":D
    aget-wide v10, v14, v9

    move-wide/from16 v39, v3

    .end local v3    # "xgs":D
    .end local v36    # "y":I
    .restart local v0    # "y":I
    .local v39, "xgs":D
    int-to-double v3, v0

    aget-wide v41, v15, v9

    mul-double v3, v3, v41

    sub-double/2addr v10, v3

    double-to-int v3, v10

    iput v3, v1, Lorg/jline/builtins/Commands$Colors;->r:I

    .line 1522
    aget-wide v3, v29, v9

    int-to-double v10, v0

    aget-wide v41, v5, v9

    mul-double v10, v10, v41

    sub-double/2addr v3, v10

    double-to-int v3, v3

    iput v3, v1, Lorg/jline/builtins/Commands$Colors;->g:I

    .line 1523
    aget-wide v3, v2, v9

    int-to-double v10, v0

    aget-wide v41, v35, v9

    mul-double v10, v10, v41

    sub-double/2addr v3, v10

    double-to-int v3, v3

    iput v3, v1, Lorg/jline/builtins/Commands$Colors;->b:I

    .line 1525
    :goto_d
    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    iget v3, v1, Lorg/jline/builtins/Commands$Colors;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v10, 0x0

    aput-object v3, v4, v10

    iget v3, v1, Lorg/jline/builtins/Commands$Colors;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v10, 0x1

    aput-object v3, v4, v10

    iget v3, v1, Lorg/jline/builtins/Commands$Colors;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v17

    const-string v3, "%02x%02x%02x"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1526
    .local v3, "col":Ljava/lang/String;
    new-instance v4, Lorg/jline/utils/StyleResolver;

    new-instance v10, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda0;

    invoke-direct {v10, v1}, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda0;-><init>(Lorg/jline/builtins/Commands$Colors;)V

    invoke-direct {v4, v10}, Lorg/jline/utils/StyleResolver;-><init>(Ljava/util/function/Function;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ".rgb"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v4

    .line 1527
    .local v4, "s":Lorg/jline/utils/AttributedStyle;
    move-object/from16 v10, v30

    .end local v30    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    .local v10, "asb":Lorg/jline/utils/AttributedStringBuilder;
    invoke-virtual {v10, v4}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1528
    move-object/from16 v31, v2

    move-object/from16 v11, v34

    .end local v2    # "bo":[D
    .restart local v31    # "bo":[D
    invoke-virtual {v10, v11}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v2

    move-object/from16 v30, v4

    move-object/from16 v4, v28

    .end local v4    # "s":Lorg/jline/utils/AttributedStyle;
    .local v30, "s":Lorg/jline/utils/AttributedStyle;
    invoke-virtual {v2, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1509
    .end local v3    # "col":Ljava/lang/String;
    .end local v30    # "s":Lorg/jline/utils/AttributedStyle;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v30, v10

    move/from16 v2, v33

    move-object/from16 v1, v35

    move-wide/from16 v10, v37

    move-wide/from16 v3, v39

    goto/16 :goto_c

    .end local v33    # "ndiv":I
    .end local v35    # "ybs":[D
    .end local v37    # "xbs":D
    .end local v39    # "xgs":D
    .restart local v1    # "ybs":[D
    .local v2, "ndiv":I
    .local v3, "xgs":D
    .local v10, "xbs":D
    .local v30, "asb":Lorg/jline/utils/AttributedStringBuilder;
    :cond_15
    move-object/from16 v35, v1

    move/from16 v33, v2

    move-wide/from16 v39, v3

    move-wide/from16 v37, v10

    move-object/from16 v4, v28

    move-object/from16 v10, v30

    move-object/from16 v1, p0

    .line 1530
    .end local v1    # "ybs":[D
    .end local v2    # "ndiv":I
    .end local v3    # "xgs":D
    .end local v9    # "x":I
    .end local v30    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    .local v10, "asb":Lorg/jline/utils/AttributedStringBuilder;
    .restart local v33    # "ndiv":I
    .restart local v35    # "ybs":[D
    .restart local v37    # "xbs":D
    .restart local v39    # "xgs":D
    sget-object v2, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v10, v2}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v2

    move-object/from16 v3, v32

    invoke-virtual {v2, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1508
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v9, v29

    move/from16 v2, v33

    move-object/from16 v1, v35

    move-wide/from16 v10, v37

    move-wide/from16 v3, v39

    goto/16 :goto_b

    .end local v33    # "ndiv":I
    .end local v35    # "ybs":[D
    .end local v37    # "xbs":D
    .end local v39    # "xgs":D
    .restart local v1    # "ybs":[D
    .restart local v2    # "ndiv":I
    .restart local v3    # "xgs":D
    .local v10, "xbs":D
    .restart local v30    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    :cond_16
    move-object/from16 v35, v1

    move/from16 v33, v2

    move-wide/from16 v39, v3

    move-wide/from16 v37, v10

    move-object/from16 v10, v30

    move-object/from16 v3, v32

    move-object/from16 v1, p0

    move-object v11, v9

    .line 1532
    .end local v0    # "y":I
    .end local v1    # "ybs":[D
    .end local v2    # "ndiv":I
    .end local v3    # "xgs":D
    .end local v30    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    .local v10, "asb":Lorg/jline/utils/AttributedStringBuilder;
    .restart local v33    # "ndiv":I
    .restart local v35    # "ybs":[D
    .restart local v37    # "xbs":D
    .restart local v39    # "xgs":D
    invoke-virtual {v10}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v0

    iget-object v2, v1, Lorg/jline/builtins/Commands$Colors;->terminal:Lorg/jline/terminal/Terminal;

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    .line 1533
    const/4 v0, -0x1

    move/from16 v2, v27

    .end local v27    # "hueAngle":I
    .local v2, "hueAngle":I
    if-eq v2, v0, :cond_1a

    .line 1534
    const/4 v0, 0x5

    .line 1535
    .local v0, "dAngle":I
    move-object v9, v5

    .end local v5    # "ygs":[D
    .local v9, "ygs":[D
    int-to-double v4, v2

    move-object/from16 v27, v6

    move-wide/from16 v41, v7

    .end local v6    # "rgb":[I
    .end local v7    # "xrs":D
    .local v27, "rgb":[I
    .local v41, "xrs":D
    int-to-double v6, v0

    const-wide/high16 v43, 0x4000000000000000L    # 2.0

    div-double v6, v6, v43

    add-int/lit8 v8, v25, -0x1

    move-object/from16 v28, v9

    .end local v9    # "ygs":[D
    .local v28, "ygs":[D
    int-to-double v8, v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v4, v4

    .line 1536
    .local v4, "zero":I
    rem-int/lit8 v5, v4, 0x5

    sub-int/2addr v4, v5

    .line 1537
    new-instance v5, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v5}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 1538
    .local v5, "asb2":Lorg/jline/utils/AttributedStringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_e
    move/from16 v7, v25

    .end local v25    # "barSize":I
    .local v7, "barSize":I
    if-ge v6, v7, :cond_19

    .line 1539
    mul-int v8, v0, v6

    add-int/2addr v8, v4

    .line 1540
    .local v8, "angle":I
    :goto_f
    if-gez v8, :cond_17

    .line 1541
    add-int/lit16 v8, v8, 0x168

    goto :goto_f

    .line 1543
    :cond_17
    :goto_10
    const/16 v9, 0x168

    if-le v8, v9, :cond_18

    .line 1544
    add-int/lit16 v8, v8, -0x168

    goto :goto_10

    .line 1546
    :cond_18
    invoke-direct {v1, v8}, Lorg/jline/builtins/Commands$Colors;->hue2rgb(I)[I

    move-result-object v27

    .line 1547
    const/16 v16, 0x0

    aget v9, v27, v16

    iput v9, v1, Lorg/jline/builtins/Commands$Colors;->r:I

    move/from16 v18, v0

    const/4 v9, 0x1

    .end local v0    # "dAngle":I
    .local v18, "dAngle":I
    aget v0, v27, v9

    iput v0, v1, Lorg/jline/builtins/Commands$Colors;->g:I

    aget v0, v27, v17

    iput v0, v1, Lorg/jline/builtins/Commands$Colors;->b:I

    .line 1548
    new-instance v0, Lorg/jline/utils/StyleResolver;

    new-instance v9, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda0;

    invoke-direct {v9, v1}, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda0;-><init>(Lorg/jline/builtins/Commands$Colors;)V

    invoke-direct {v0, v9}, Lorg/jline/utils/StyleResolver;-><init>(Ljava/util/function/Function;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v30, v2

    .end local v2    # "hueAngle":I
    .local v30, "hueAngle":I
    const-string v2, ".hue"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    .line 1549
    .local v0, "s":Lorg/jline/utils/AttributedStyle;
    invoke-virtual {v5, v0}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1550
    invoke-virtual {v5, v11}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v0

    .end local v0    # "s":Lorg/jline/utils/AttributedStyle;
    .local v32, "s":Lorg/jline/utils/AttributedStyle;
    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x3

    invoke-direct {v1, v9, v0}, Lorg/jline/builtins/Commands$Colors;->addPadding(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1538
    .end local v8    # "angle":I
    .end local v32    # "s":Lorg/jline/utils/AttributedStyle;
    add-int/lit8 v6, v6, 0x1

    move/from16 v25, v7

    move/from16 v0, v18

    move/from16 v2, v30

    goto :goto_e

    .end local v18    # "dAngle":I
    .end local v30    # "hueAngle":I
    .local v0, "dAngle":I
    .restart local v2    # "hueAngle":I
    :cond_19
    move/from16 v18, v0

    move/from16 v30, v2

    .line 1552
    .end local v0    # "dAngle":I
    .end local v2    # "hueAngle":I
    .end local v6    # "i":I
    .restart local v18    # "dAngle":I
    .restart local v30    # "hueAngle":I
    sget-object v0, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v5, v0}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1553
    invoke-virtual {v5}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v0

    iget-object v2, v1, Lorg/jline/builtins/Commands$Colors;->terminal:Lorg/jline/terminal/Terminal;

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    move-object/from16 v6, v27

    goto :goto_11

    .line 1533
    .end local v4    # "zero":I
    .end local v18    # "dAngle":I
    .end local v27    # "rgb":[I
    .end local v28    # "ygs":[D
    .end local v30    # "hueAngle":I
    .end local v41    # "xrs":D
    .restart local v2    # "hueAngle":I
    .local v5, "ygs":[D
    .local v6, "rgb":[I
    .local v7, "xrs":D
    .restart local v25    # "barSize":I
    :cond_1a
    move/from16 v30, v2

    move-object/from16 v28, v5

    move-object/from16 v27, v6

    move-wide/from16 v41, v7

    move/from16 v7, v25

    .line 1555
    .end local v2    # "hueAngle":I
    .end local v5    # "ygs":[D
    .end local v25    # "barSize":I
    .local v7, "barSize":I
    .restart local v28    # "ygs":[D
    .restart local v30    # "hueAngle":I
    .restart local v41    # "xrs":D
    :goto_11
    return-void

    .line 1472
    .end local v10    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    .end local v12    # "div":D
    .end local v14    # "ro":[D
    .end local v15    # "yrs":[D
    .end local v20    # "step":D
    .end local v22    # "zoom":D
    .end local v24    # "width":I
    .end local v26    # "hsl":[I
    .end local v28    # "ygs":[D
    .end local v29    # "go":[D
    .end local v30    # "hueAngle":I
    .end local v31    # "bo":[D
    .end local v33    # "ndiv":I
    .end local v35    # "ybs":[D
    .end local v37    # "xbs":D
    .end local v39    # "xgs":D
    .end local v41    # "xrs":D
    .local v3, "zoom":D
    .local v7, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "found":Z
    :cond_1b
    move-object v1, v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v5, p1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1476
    .end local v7    # "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "found":Z
    :cond_1c
    move-object v5, v1

    move-object v1, v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public printColors(ZZZILjava/lang/String;Ljava/lang/String;)V
    .locals 26
    .param p1, "name"    # Z
    .param p2, "rgb"    # Z
    .param p3, "small"    # Z
    .param p4, "columns"    # I
    .param p5, "findName"    # Ljava/lang/String;
    .param p6, "style"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1191
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    iput-boolean v6, v0, Lorg/jline/builtins/Commands$Colors;->name:Z

    .line 1192
    iput-boolean v1, v0, Lorg/jline/builtins/Commands$Colors;->rgb:Z

    .line 1193
    move-object/from16 v6, p6

    invoke-direct {v0, v6}, Lorg/jline/builtins/Commands$Colors;->setFixedStyle(Ljava/lang/String;)V

    .line 1194
    new-instance v7, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v7}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 1195
    .local v7, "asb":Lorg/jline/utils/AttributedStringBuilder;
    iget-object v8, v0, Lorg/jline/builtins/Commands$Colors;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v8}, Lorg/jline/terminal/Terminal;->getWidth()I

    move-result v8

    .line 1196
    .local v8, "width":I
    if-eqz p3, :cond_1

    const-string v9, " 16-color "

    goto :goto_1

    :cond_1
    const-string v9, "256-color "

    .line 1197
    .local v9, "tableName":Ljava/lang/String;
    :goto_1
    const-string v11, "."

    if-nez p1, :cond_10

    if-nez v1, :cond_10

    .line 1198
    iget-object v14, v0, Lorg/jline/builtins/Commands$Colors;->out:Ljava/io/PrintStream;

    invoke-virtual {v14, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1199
    iget-object v14, v0, Lorg/jline/builtins/Commands$Colors;->out:Ljava/io/PrintStream;

    const-string v15, "table, fg:<name> "

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1200
    if-nez p3, :cond_2

    .line 1201
    iget-object v14, v0, Lorg/jline/builtins/Commands$Colors;->out:Ljava/io/PrintStream;

    const-string v15, "/ 38;5;<n>"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1203
    :cond_2
    iget-object v14, v0, Lorg/jline/builtins/Commands$Colors;->out:Ljava/io/PrintStream;

    invoke-virtual {v14}, Ljava/io/PrintStream;->println()V

    .line 1204
    iget-object v14, v0, Lorg/jline/builtins/Commands$Colors;->out:Ljava/io/PrintStream;

    const-string v15, "                 bg:<name> "

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1205
    if-nez p3, :cond_3

    .line 1206
    iget-object v14, v0, Lorg/jline/builtins/Commands$Colors;->out:Ljava/io/PrintStream;

    const-string v15, "/ 48;5;<n>"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1208
    :cond_3
    iget-object v14, v0, Lorg/jline/builtins/Commands$Colors;->out:Ljava/io/PrintStream;

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1209
    const/16 v14, 0xb4

    if-ge v8, v14, :cond_4

    move v4, v5

    .line 1210
    .local v4, "narrow":Z
    :cond_4
    sget-object v5, Lorg/jline/builtins/Commands$Colors;->COLORS_16:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const-string v15, "    "

    if-eqz v14, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1211
    .local v14, "c":Ljava/lang/String;
    new-instance v10, Lorg/jline/utils/StyleResolver;

    new-instance v13, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda1;

    invoke-direct {v13, v0}, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda1;-><init>(Lorg/jline/builtins/Commands$Colors;)V

    invoke-direct {v10, v13}, Lorg/jline/utils/StyleResolver;-><init>(Ljava/util/function/Function;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x2e

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v10

    .line 1212
    .local v10, "ss":Lorg/jline/utils/AttributedStyle;
    invoke-virtual {v7, v10}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1213
    const/16 v12, 0xb

    invoke-direct {v0, v12, v14}, Lorg/jline/builtins/Commands$Colors;->addPadding(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1214
    sget-object v12, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v7, v12}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1215
    const-string v12, "white"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1216
    if-nez v4, :cond_6

    if-eqz p3, :cond_5

    goto :goto_3

    .line 1219
    :cond_5
    invoke-virtual {v7, v15}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    const/16 v12, 0xa

    goto :goto_4

    .line 1217
    :cond_6
    :goto_3
    const/16 v12, 0xa

    invoke-virtual {v7, v12}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_4

    .line 1221
    :cond_7
    const/16 v12, 0xa

    const-string v13, "!white"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1222
    invoke-virtual {v7, v12}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 1224
    .end local v10    # "ss":Lorg/jline/utils/AttributedStyle;
    .end local v14    # "c":Ljava/lang/String;
    :cond_8
    :goto_4
    goto :goto_2

    .line 1225
    :cond_9
    const/16 v12, 0xa

    invoke-virtual {v7, v12}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 1226
    if-nez p3, :cond_f

    .line 1227
    const/16 v5, 0x10

    .local v5, "i":I
    :goto_5
    const/16 v10, 0x100

    if-ge v5, v10, :cond_f

    .line 1228
    invoke-direct {v0, v5}, Lorg/jline/builtins/Commands$Colors;->foreground(I)Ljava/lang/String;

    move-result-object v10

    .line 1229
    .local v10, "fg":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 1230
    .local v12, "code":Ljava/lang/String;
    new-instance v13, Lorg/jline/utils/StyleResolver;

    new-instance v14, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda1;

    invoke-direct {v14, v0}, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda1;-><init>(Lorg/jline/builtins/Commands$Colors;)V

    invoke-direct {v13, v14}, Lorg/jline/utils/StyleResolver;-><init>(Ljava/util/function/Function;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v6, 0x0

    invoke-virtual {v13, v14, v6}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v13

    .line 1231
    .local v13, "ss":Lorg/jline/utils/AttributedStyle;
    invoke-virtual {v7, v13}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1232
    const-string v6, " "

    .line 1233
    .local v6, "str":Ljava/lang/String;
    const/16 v14, 0x64

    if-ge v5, v14, :cond_a

    .line 1234
    const-string v6, "  "

    goto :goto_7

    .line 1235
    :cond_a
    const/16 v14, 0xe7

    if-le v5, v14, :cond_c

    .line 1236
    rem-int/lit8 v14, v5, 0x2

    if-nez v14, :cond_b

    move-object v14, v15

    goto :goto_6

    :cond_b
    const-string v14, "   "

    :goto_6
    move-object v6, v14

    .line 1238
    :cond_c
    :goto_7
    invoke-virtual {v7, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v14

    move-object/from16 v17, v6

    .end local v6    # "str":Ljava/lang/String;
    .local v17, "str":Ljava/lang/String;
    const/16 v6, 0x20

    invoke-virtual {v14, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 1239
    const/16 v6, 0x33

    if-eq v5, v6, :cond_d

    const/16 v6, 0x57

    if-eq v5, v6, :cond_d

    const/16 v6, 0x7b

    if-eq v5, v6, :cond_d

    const/16 v6, 0x9f

    if-eq v5, v6, :cond_d

    const/16 v6, 0xc3

    if-eq v5, v6, :cond_d

    const/16 v6, 0xe7

    if-eq v5, v6, :cond_d

    if-eqz v4, :cond_e

    const/16 v6, 0x21

    if-eq v5, v6, :cond_d

    const/16 v6, 0x45

    if-eq v5, v6, :cond_d

    const/16 v6, 0x69

    if-eq v5, v6, :cond_d

    const/16 v6, 0x8d

    if-eq v5, v6, :cond_d

    const/16 v6, 0xb1

    if-eq v5, v6, :cond_d

    const/16 v6, 0xd5

    if-eq v5, v6, :cond_d

    const/16 v6, 0xf3

    if-ne v5, v6, :cond_e

    .line 1243
    :cond_d
    sget-object v6, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v7, v6}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1244
    const/16 v6, 0xa

    invoke-virtual {v7, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 1245
    const/16 v14, 0xe7

    if-ne v5, v14, :cond_e

    .line 1246
    invoke-virtual {v7, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 1227
    .end local v10    # "fg":Ljava/lang/String;
    .end local v12    # "code":Ljava/lang/String;
    .end local v13    # "ss":Lorg/jline/utils/AttributedStyle;
    .end local v17    # "str":Ljava/lang/String;
    :cond_e
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, p6

    goto/16 :goto_5

    .line 1251
    .end local v4    # "narrow":Z
    .end local v5    # "i":I
    :cond_f
    move-object/from16 v19, v9

    goto/16 :goto_14

    .line 1252
    :cond_10
    iget-object v6, v0, Lorg/jline/builtins/Commands$Colors;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1253
    const/16 v6, 0xf

    const/4 v10, 0x3

    const/4 v12, 0x2

    if-eqz p1, :cond_11

    .line 1254
    new-array v13, v10, [Ljava/lang/Integer;

    const/16 v14, 0x19

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v4

    const/16 v14, 0x3c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v5

    const/16 v14, 0x4b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v12

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/jline/utils/AttributedStringBuilder;->tabs(Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1255
    iget-object v13, v0, Lorg/jline/builtins/Commands$Colors;->out:Ljava/io/PrintStream;

    const-string v14, "table, fg:~<name> OR 38;5;<n>"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1256
    iget-object v13, v0, Lorg/jline/builtins/Commands$Colors;->out:Ljava/io/PrintStream;

    const-string v14, "                 bg:~<name> OR 48;5;<n>"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 1258
    :cond_11
    new-array v13, v10, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v4

    const/16 v14, 0x2d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v5

    const/16 v14, 0x46

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v12

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/jline/utils/AttributedStringBuilder;->tabs(Ljava/util/List;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1259
    iget-object v13, v0, Lorg/jline/builtins/Commands$Colors;->out:Ljava/io/PrintStream;

    const-string v14, "table, fg-rgb:<color24bit> OR 38;5;<n>"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1260
    iget-object v13, v0, Lorg/jline/builtins/Commands$Colors;->out:Ljava/io/PrintStream;

    const-string v14, "                 bg-rgb:<color24bit> OR 48;5;<n>"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1262
    :goto_8
    iget-object v13, v0, Lorg/jline/builtins/Commands$Colors;->out:Ljava/io/PrintStream;

    invoke-virtual {v13}, Ljava/io/PrintStream;->println()V

    .line 1263
    const/4 v13, 0x0

    .line 1264
    .local v13, "col":I
    const/4 v14, 0x0

    .line 1265
    .local v14, "idx":I
    if-eqz v1, :cond_12

    const/16 v16, 0xc

    goto :goto_9

    :cond_12
    const/16 v16, 0x15

    .line 1266
    .local v16, "colWidth":I
    :goto_9
    const/16 v17, 0x1

    .line 1267
    .local v17, "lb":I
    const-string v15, "#"

    if-eqz v3, :cond_14

    invoke-virtual {v3, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_13

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1268
    :cond_13
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1270
    .end local p5    # "findName":Ljava/lang/String;
    .local v3, "findName":Ljava/lang/String;
    :cond_14
    invoke-direct/range {p0 .. p0}, Lorg/jline/builtins/Commands$Colors;->retrieveColorNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1271
    .local v19, "line":Ljava/lang/String;
    const/16 v10, 0xe8

    const/4 v12, 0x4

    if-eqz v1, :cond_15

    goto :goto_f

    .line 1273
    :cond_15
    if-eqz v3, :cond_16

    .line 1274
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 1275
    add-int/lit8 v14, v14, 0x1

    .line 1276
    const/4 v5, 0x1

    const/4 v10, 0x3

    const/4 v12, 0x2

    goto :goto_a

    .line 1278
    :cond_16
    if-eqz p3, :cond_17

    .line 1279
    const/16 v5, 0xf

    .line 1280
    .end local v16    # "colWidth":I
    .local v5, "colWidth":I
    const/16 v16, 0x1

    move/from16 v17, v16

    move/from16 v16, v5

    .end local v17    # "lb":I
    .local v16, "lb":I
    goto :goto_f

    .line 1281
    .end local v5    # "colWidth":I
    .local v16, "colWidth":I
    .restart local v17    # "lb":I
    :cond_17
    if-le v2, v12, :cond_1d

    .line 1282
    if-le v14, v6, :cond_1a

    if-ge v14, v10, :cond_1a

    .line 1283
    const/4 v5, 0x6

    if-ne v2, v5, :cond_19

    const/4 v5, 0x1

    if-eq v13, v5, :cond_19

    const/4 v5, 0x2

    if-eq v13, v5, :cond_19

    const/4 v5, 0x3

    if-ne v13, v5, :cond_18

    goto :goto_b

    :cond_18
    const/16 v20, 0x14

    goto :goto_c

    :cond_19
    const/4 v5, 0x3

    :goto_b
    const/16 v20, 0x15

    :goto_c
    move/from16 v16, v20

    .line 1284
    const/16 v17, 0x1

    goto :goto_f

    .line 1282
    :cond_1a
    const/4 v5, 0x3

    .line 1286
    const/4 v5, 0x6

    if-ne v2, v5, :cond_1c

    rem-int/lit8 v5, v14, 0x2

    if-eqz v5, :cond_1c

    const/4 v5, 0x7

    if-ne v13, v5, :cond_1b

    goto :goto_d

    :cond_1b
    const/16 v5, 0x10

    goto :goto_e

    :cond_1c
    :goto_d
    move v5, v6

    .line 1287
    .end local v16    # "colWidth":I
    .restart local v5    # "colWidth":I
    :goto_e
    const/16 v16, -0x1

    move/from16 v17, v16

    move/from16 v16, v5

    .line 1290
    .end local v5    # "colWidth":I
    .restart local v16    # "colWidth":I
    :cond_1d
    :goto_f
    invoke-direct {v0, v14}, Lorg/jline/builtins/Commands$Colors;->foreground(I)Ljava/lang/String;

    move-result-object v5

    .line 1291
    .local v5, "fg":Ljava/lang/String;
    if-eqz v1, :cond_1f

    .line 1292
    sget-object v22, Lorg/jline/utils/Colors;->DEFAULT_COLORS_256:[I

    aget v22, v22, v14

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    .line 1293
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v6, v19

    move/from16 v10, v22

    .end local v19    # "line":Ljava/lang/String;
    .local v6, "line":Ljava/lang/String;
    .local v10, "p":I
    :goto_10
    const/4 v12, 0x6

    if-ge v10, v12, :cond_1e

    .line 1294
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v4

    const-string v4, "0"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1293
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v23

    const/4 v12, 0x4

    goto :goto_10

    :cond_1e
    move-object/from16 v23, v4

    .line 1296
    .end local v10    # "p":I
    if-eqz v3, :cond_20

    .line 1297
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 1298
    add-int/lit8 v14, v14, 0x1

    .line 1299
    move-object/from16 v4, v23

    const/4 v5, 0x1

    const/16 v6, 0xf

    const/4 v10, 0x3

    const/4 v12, 0x2

    goto/16 :goto_a

    .line 1291
    .end local v6    # "line":Ljava/lang/String;
    .restart local v19    # "line":Ljava/lang/String;
    :cond_1f
    move-object/from16 v23, v4

    move-object/from16 v6, v19

    .line 1303
    .end local v19    # "line":Ljava/lang/String;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_20
    new-instance v4, Lorg/jline/utils/StyleResolver;

    new-instance v10, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0}, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda1;-><init>(Lorg/jline/builtins/Commands$Colors;)V

    invoke-direct {v4, v10}, Lorg/jline/utils/StyleResolver;-><init>(Ljava/util/function/Function;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v12}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v4

    .line 1304
    .local v4, "ss":Lorg/jline/utils/AttributedStyle;
    if-eqz v1, :cond_21

    .line 1305
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1307
    :cond_21
    invoke-virtual {v7, v4}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1308
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 1309
    .local v10, "idxstr":Ljava/lang/String;
    if-eqz v1, :cond_23

    .line 1310
    const/16 v12, 0xa

    if-ge v14, v12, :cond_22

    .line 1311
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v9

    .end local v9    # "tableName":Ljava/lang/String;
    .local v19, "tableName":Ljava/lang/String;
    const-string v9, "  "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_11

    .line 1312
    .end local v19    # "tableName":Ljava/lang/String;
    .restart local v9    # "tableName":Ljava/lang/String;
    :cond_22
    move-object/from16 v19, v9

    .end local v9    # "tableName":Ljava/lang/String;
    .restart local v19    # "tableName":Ljava/lang/String;
    const/16 v9, 0x64

    if-ge v14, v9, :cond_24

    .line 1313
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_11

    .line 1309
    .end local v19    # "tableName":Ljava/lang/String;
    .restart local v9    # "tableName":Ljava/lang/String;
    :cond_23
    move-object/from16 v19, v9

    .line 1316
    .end local v9    # "tableName":Ljava/lang/String;
    .restart local v19    # "tableName":Ljava/lang/String;
    :cond_24
    :goto_11
    invoke-virtual {v7, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    sub-int v12, v16, v12

    invoke-direct {v0, v12, v6}, Lorg/jline/builtins/Commands$Colors;->addPadding(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1317
    const/4 v9, 0x1

    if-ne v2, v9, :cond_25

    .line 1318
    sget-object v9, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v7, v9}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1319
    const-string v9, "\t"

    invoke-virtual {v7, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v12

    move-object/from16 v24, v10

    .end local v10    # "idxstr":Ljava/lang/String;
    .local v24, "idxstr":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v25, v5

    .end local v5    # "fg":Ljava/lang/String;
    .local v25, "fg":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/jline/builtins/Commands$Colors;->getStyle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1320
    invoke-virtual {v7, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/jline/utils/AttributedStyle;->toAnsi()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1321
    sget-object v5, Lorg/jline/utils/Colors;->DEFAULT_COLORS_256:[I

    aget v5, v5, v14

    move-object v10, v4

    .end local v4    # "ss":Lorg/jline/utils/AttributedStyle;
    .local v10, "ss":Lorg/jline/utils/AttributedStyle;
    int-to-long v4, v5

    invoke-direct {v0, v4, v5}, Lorg/jline/builtins/Commands$Colors;->rgb(J)[I

    move-result-object v4

    .line 1322
    .local v4, "rgb1":[I
    const/4 v5, 0x0

    aget v12, v4, v5

    const/16 v18, 0x1

    aget v5, v4, v18

    const/16 v18, 0x2

    aget v1, v4, v18

    invoke-direct {v0, v12, v5, v1}, Lorg/jline/builtins/Commands$Colors;->rgb2hsl(III)[I

    move-result-object v1

    .line 1323
    .local v1, "hsl":[I
    invoke-virtual {v7, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v4

    const/4 v12, 0x0

    .end local v4    # "rgb1":[I
    .local v18, "rgb1":[I
    aget v4, v1, v12

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x6

    invoke-direct {v0, v12, v4}, Lorg/jline/builtins/Commands$Colors;->addLeftPadding(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v6

    const/4 v12, 0x1

    .end local v6    # "line":Ljava/lang/String;
    .local v21, "line":Ljava/lang/String;
    aget v6, v1, v12

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1324
    const/4 v12, 0x4

    invoke-direct {v0, v12, v5}, Lorg/jline/builtins/Commands$Colors;->addLeftPadding(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v4

    .line 1325
    invoke-virtual {v4, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x2

    aget v12, v1, v9

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-direct {v0, v6, v5}, Lorg/jline/builtins/Commands$Colors;->addLeftPadding(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_12

    .line 1317
    .end local v1    # "hsl":[I
    .end local v18    # "rgb1":[I
    .end local v21    # "line":Ljava/lang/String;
    .end local v24    # "idxstr":Ljava/lang/String;
    .end local v25    # "fg":Ljava/lang/String;
    .local v4, "ss":Lorg/jline/utils/AttributedStyle;
    .restart local v5    # "fg":Ljava/lang/String;
    .restart local v6    # "line":Ljava/lang/String;
    .local v10, "idxstr":Ljava/lang/String;
    :cond_25
    move-object/from16 v25, v5

    move-object/from16 v21, v6

    move-object/from16 v24, v10

    const/4 v9, 0x2

    move-object v10, v4

    .line 1327
    .end local v4    # "ss":Lorg/jline/utils/AttributedStyle;
    .end local v5    # "fg":Ljava/lang/String;
    .end local v6    # "line":Ljava/lang/String;
    .local v10, "ss":Lorg/jline/utils/AttributedStyle;
    .restart local v21    # "line":Ljava/lang/String;
    .restart local v24    # "idxstr":Ljava/lang/String;
    .restart local v25    # "fg":Ljava/lang/String;
    :goto_12
    add-int/lit8 v13, v13, 0x1

    .line 1328
    add-int/lit8 v14, v14, 0x1

    .line 1329
    add-int/lit8 v1, v13, 0x1

    mul-int v1, v1, v16

    if-gt v1, v8, :cond_26

    add-int v1, v13, v17

    if-le v1, v2, :cond_27

    .line 1330
    :cond_26
    const/4 v13, 0x0

    .line 1331
    sget-object v1, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v7, v1}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1332
    const/16 v1, 0xa

    invoke-virtual {v7, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 1334
    :cond_27
    if-nez v3, :cond_2c

    .line 1335
    const/16 v1, 0x10

    if-ne v14, v1, :cond_2a

    .line 1336
    if-eqz p3, :cond_28

    .line 1337
    goto :goto_14

    .line 1338
    :cond_28
    if-eqz v13, :cond_29

    .line 1339
    const/4 v1, 0x0

    .line 1340
    .end local v13    # "col":I
    .local v1, "col":I
    sget-object v4, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v7, v4}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1341
    const/16 v4, 0xa

    invoke-virtual {v7, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    move v13, v1

    goto :goto_13

    .line 1338
    .end local v1    # "col":I
    .restart local v13    # "col":I
    :cond_29
    const/16 v4, 0xa

    goto :goto_13

    .line 1343
    :cond_2a
    const/16 v1, 0xe8

    if-ne v14, v1, :cond_2b

    if-eqz v13, :cond_2b

    .line 1344
    const/4 v1, 0x0

    .line 1345
    .end local v13    # "col":I
    .restart local v1    # "col":I
    sget-object v4, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v7, v4}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1346
    const/16 v4, 0xa

    invoke-virtual {v7, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    move v13, v1

    goto :goto_13

    .line 1343
    .end local v1    # "col":I
    .restart local v13    # "col":I
    :cond_2b
    const/16 v4, 0xa

    goto :goto_13

    .line 1334
    :cond_2c
    const/16 v4, 0xa

    .line 1349
    .end local v10    # "ss":Lorg/jline/utils/AttributedStyle;
    .end local v21    # "line":Ljava/lang/String;
    .end local v24    # "idxstr":Ljava/lang/String;
    .end local v25    # "fg":Ljava/lang/String;
    :goto_13
    move/from16 v1, p2

    move v12, v9

    move-object/from16 v9, v19

    move-object/from16 v4, v23

    const/4 v5, 0x1

    const/16 v6, 0xf

    const/4 v10, 0x3

    goto/16 :goto_a

    .line 1270
    .end local v19    # "tableName":Ljava/lang/String;
    .restart local v9    # "tableName":Ljava/lang/String;
    :cond_2d
    move-object/from16 v19, v9

    .line 1351
    .end local v9    # "tableName":Ljava/lang/String;
    .end local v13    # "col":I
    .end local v14    # "idx":I
    .end local v16    # "colWidth":I
    .end local v17    # "lb":I
    .restart local v19    # "tableName":Ljava/lang/String;
    :goto_14
    invoke-virtual {v7}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v1

    iget-object v4, v0, Lorg/jline/builtins/Commands$Colors;->terminal:Lorg/jline/terminal/Terminal;

    invoke-virtual {v1, v4}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    .line 1352
    return-void
.end method
