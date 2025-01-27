.class public Lorg/jline/terminal/impl/ExecPty;
.super Lorg/jline/terminal/impl/AbstractPty;
.source "ExecPty.java"

# interfaces
.implements Lorg/jline/terminal/spi/Pty;


# instance fields
.field private final name:Ljava/lang/String;

.field private final system:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "system"    # Z

    .line 48
    invoke-direct {p0}, Lorg/jline/terminal/impl/AbstractPty;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/jline/terminal/impl/ExecPty;->name:Ljava/lang/String;

    .line 50
    iput-boolean p2, p0, Lorg/jline/terminal/impl/ExecPty;->system:Z

    .line 51
    return-void
.end method

.method public static current()Lorg/jline/terminal/spi/Pty;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lorg/jline/utils/OSUtils;->TTY_COMMAND:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/jline/utils/ExecHelper;->exec(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Lorg/jline/terminal/impl/ExecPty;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/jline/terminal/impl/ExecPty;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 43
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not a tty"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static doGetAttr(Ljava/lang/String;)Lorg/jline/terminal/Attributes;
    .locals 9
    .param p0, "cfg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    new-instance v0, Lorg/jline/terminal/Attributes;

    invoke-direct {v0}, Lorg/jline/terminal/Attributes;-><init>()V

    .line 181
    .local v0, "attributes":Lorg/jline/terminal/Attributes;
    invoke-static {}, Lorg/jline/terminal/Attributes$InputFlag;->values()[Lorg/jline/terminal/Attributes$InputFlag;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 182
    .local v5, "flag":Lorg/jline/terminal/Attributes$InputFlag;
    invoke-static {p0, v5}, Lorg/jline/terminal/impl/ExecPty;->doGetFlag(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Boolean;

    move-result-object v6

    .line 183
    .local v6, "value":Ljava/lang/Boolean;
    if-eqz v6, :cond_0

    .line 184
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v0, v5, v7}, Lorg/jline/terminal/Attributes;->setInputFlag(Lorg/jline/terminal/Attributes$InputFlag;Z)V

    .line 181
    .end local v5    # "flag":Lorg/jline/terminal/Attributes$InputFlag;
    .end local v6    # "value":Ljava/lang/Boolean;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    :cond_1
    invoke-static {}, Lorg/jline/terminal/Attributes$OutputFlag;->values()[Lorg/jline/terminal/Attributes$OutputFlag;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 188
    .local v5, "flag":Lorg/jline/terminal/Attributes$OutputFlag;
    invoke-static {p0, v5}, Lorg/jline/terminal/impl/ExecPty;->doGetFlag(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Boolean;

    move-result-object v6

    .line 189
    .restart local v6    # "value":Ljava/lang/Boolean;
    if-eqz v6, :cond_2

    .line 190
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v0, v5, v7}, Lorg/jline/terminal/Attributes;->setOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;Z)V

    .line 187
    .end local v5    # "flag":Lorg/jline/terminal/Attributes$OutputFlag;
    .end local v6    # "value":Ljava/lang/Boolean;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 193
    :cond_3
    invoke-static {}, Lorg/jline/terminal/Attributes$ControlFlag;->values()[Lorg/jline/terminal/Attributes$ControlFlag;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_5

    aget-object v5, v1, v4

    .line 194
    .local v5, "flag":Lorg/jline/terminal/Attributes$ControlFlag;
    invoke-static {p0, v5}, Lorg/jline/terminal/impl/ExecPty;->doGetFlag(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Boolean;

    move-result-object v6

    .line 195
    .restart local v6    # "value":Ljava/lang/Boolean;
    if-eqz v6, :cond_4

    .line 196
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v0, v5, v7}, Lorg/jline/terminal/Attributes;->setControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;Z)V

    .line 193
    .end local v5    # "flag":Lorg/jline/terminal/Attributes$ControlFlag;
    .end local v6    # "value":Ljava/lang/Boolean;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 199
    :cond_5
    invoke-static {}, Lorg/jline/terminal/Attributes$LocalFlag;->values()[Lorg/jline/terminal/Attributes$LocalFlag;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_7

    aget-object v5, v1, v4

    .line 200
    .local v5, "flag":Lorg/jline/terminal/Attributes$LocalFlag;
    invoke-static {p0, v5}, Lorg/jline/terminal/impl/ExecPty;->doGetFlag(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Boolean;

    move-result-object v6

    .line 201
    .restart local v6    # "value":Ljava/lang/Boolean;
    if-eqz v6, :cond_6

    .line 202
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v0, v5, v7}, Lorg/jline/terminal/Attributes;->setLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;Z)V

    .line 199
    .end local v5    # "flag":Lorg/jline/terminal/Attributes$LocalFlag;
    .end local v6    # "value":Ljava/lang/Boolean;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 205
    :cond_7
    invoke-static {}, Lorg/jline/terminal/Attributes$ControlChar;->values()[Lorg/jline/terminal/Attributes$ControlChar;

    move-result-object v1

    array-length v2, v1

    :goto_4
    if-ge v3, v2, :cond_a

    aget-object v4, v1, v3

    .line 206
    .local v4, "cchar":Lorg/jline/terminal/Attributes$ControlChar;
    invoke-virtual {v4}, Lorg/jline/terminal/Attributes$ControlChar;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "name":Ljava/lang/String;
    const-string v7, "reprint"

    invoke-virtual {v7, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 208
    const-string v5, "(?:reprint|rprnt)"

    .line 210
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[\\s;]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\\s*=\\s*(.+?)[\\s;]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 211
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 212
    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/jline/terminal/impl/ExecPty;->parseControlChar(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v4, v6}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 205
    .end local v4    # "cchar":Lorg/jline/terminal/Attributes$ControlChar;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 215
    :cond_a
    return-object v0
.end method

.method private static doGetFlag(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "cfg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 219
    .local p1, "flag":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(?:^|[\\s;])(\\-?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")(?:[\\s;]|$)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 220
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method static doGetInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "cfg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\b([0-9]+)\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\\s+([0-9]+)\\b"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\s*=\\s*([0-9]+)\\b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 272
    .local v0, "patterns":[Ljava/lang/String;
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    .line 273
    .local v2, "pattern":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 274
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 275
    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 272
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static doGetSize(Ljava/lang/String;)Lorg/jline/terminal/Size;
    .locals 3
    .param p0, "cfg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    new-instance v0, Lorg/jline/terminal/Size;

    const-string v1, "columns"

    invoke-static {v1, p0}, Lorg/jline/terminal/impl/ExecPty;->doGetInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "rows"

    invoke-static {v2, p0}, Lorg/jline/terminal/impl/ExecPty;->doGetInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/jline/terminal/Size;-><init>(II)V

    return-object v0
.end method

.method static parseControlChar(Ljava/lang/String;)I
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .line 225
    const-string v0, "<UNDEF>"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const/4 v0, -0x1

    return v0

    .line 229
    :cond_0
    const-string v0, "DEL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x7f

    if-eqz v0, :cond_1

    .line 230
    return v1

    .line 233
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_2

    .line 234
    const/16 v0, 0x8

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 237
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-lt v2, v3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_3

    .line 238
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 241
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    const/16 v4, 0x5e

    const/4 v5, 0x1

    if-ne v2, v4, :cond_5

    .line 242
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_4

    .line 243
    return v1

    .line 245
    :cond_4
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x40

    return v0

    .line 247
    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4d

    if-ne v1, v2, :cond_8

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_8

    .line 248
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_7

    .line 249
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    .line 250
    const/16 v0, 0xff

    return v0

    .line 252
    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x40

    add-int/lit16 v0, v0, 0x80

    return v0

    .line 255
    :cond_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit16 v0, v0, 0x80

    return v0

    .line 258
    :cond_8
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method protected doGetConfig()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-boolean v0, p0, Lorg/jline/terminal/impl/ExecPty;->system:Z

    const-string v1, "-a"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 175
    new-array v0, v2, [Ljava/lang/String;

    sget-object v2, Lorg/jline/utils/OSUtils;->STTY_COMMAND:Ljava/lang/String;

    aput-object v2, v0, v4

    aput-object v1, v0, v3

    invoke-static {v3, v0}, Lorg/jline/utils/ExecHelper;->exec(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sget-object v5, Lorg/jline/utils/OSUtils;->STTY_COMMAND:Ljava/lang/String;

    aput-object v5, v0, v4

    sget-object v5, Lorg/jline/utils/OSUtils;->STTY_F_OPTION:Ljava/lang/String;

    aput-object v5, v0, v3

    invoke-virtual {p0}, Lorg/jline/terminal/impl/ExecPty;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v4, v0}, Lorg/jline/utils/ExecHelper;->exec(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0
.end method

.method protected doGetSlaveInput()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-boolean v0, p0, Lorg/jline/terminal/impl/ExecPty;->system:Z

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/io/FileInputStream;

    sget-object v1, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/ExecPty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 73
    :goto_0
    return-object v0
.end method

.method protected doSetAttr(Lorg/jline/terminal/Attributes;)V
    .locals 5
    .param p1, "attr"    # Lorg/jline/terminal/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lorg/jline/terminal/impl/ExecPty;->getAttr()Lorg/jline/terminal/Attributes;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jline/terminal/impl/ExecPty;->getFlagsToSet(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes;)Ljava/util/List;

    move-result-object v0

    .line 94
    .local v0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 95
    const/4 v1, 0x0

    sget-object v2, Lorg/jline/utils/OSUtils;->STTY_COMMAND:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 96
    iget-boolean v1, p0, Lorg/jline/terminal/impl/ExecPty;->system:Z

    if-nez v1, :cond_0

    .line 97
    const/4 v1, 0x1

    sget-object v2, Lorg/jline/utils/OSUtils;->STTY_F_OPTION:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 98
    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/jline/terminal/impl/ExecPty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 101
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lorg/jline/terminal/impl/ExecPty;->system:Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/jline/utils/ExecHelper;->exec(Z[Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unable to perform all requested operations"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    invoke-virtual {p0}, Lorg/jline/terminal/impl/ExecPty;->getAttr()Lorg/jline/terminal/Attributes;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/jline/terminal/impl/ExecPty;->getFlagsToSet(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes;)Ljava/util/List;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not set the following flags: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-static {v4, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 110
    :cond_2
    throw v1

    .line 114
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_0
    return-void
.end method

.method public getAttr()Lorg/jline/terminal/Attributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lorg/jline/terminal/impl/ExecPty;->doGetConfig()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "cfg":Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/terminal/impl/ExecPty;->doGetAttr(Ljava/lang/String;)Lorg/jline/terminal/Attributes;

    move-result-object v1

    return-object v1
.end method

.method protected getFlagsToSet(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Attributes;)Ljava/util/List;
    .locals 10
    .param p1, "attr"    # Lorg/jline/terminal/Attributes;
    .param p2, "current"    # Lorg/jline/terminal/Attributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/terminal/Attributes;",
            "Lorg/jline/terminal/Attributes;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/jline/terminal/Attributes$InputFlag;->values()[Lorg/jline/terminal/Attributes$InputFlag;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "-"

    if-ge v4, v2, :cond_2

    aget-object v6, v1, v4

    .line 119
    .local v6, "flag":Lorg/jline/terminal/Attributes$InputFlag;
    invoke-virtual {p1, v6}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v7

    invoke-virtual {p2, v6}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v8

    if-eq v7, v8, :cond_1

    .line 120
    invoke-virtual {p1, v6}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lorg/jline/terminal/Attributes$InputFlag;->name()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lorg/jline/terminal/Attributes$InputFlag;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v6    # "flag":Lorg/jline/terminal/Attributes$InputFlag;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    :cond_2
    invoke-static {}, Lorg/jline/terminal/Attributes$OutputFlag;->values()[Lorg/jline/terminal/Attributes$OutputFlag;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_5

    aget-object v6, v1, v4

    .line 124
    .local v6, "flag":Lorg/jline/terminal/Attributes$OutputFlag;
    invoke-virtual {p1, v6}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v7

    invoke-virtual {p2, v6}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v8

    if-eq v7, v8, :cond_4

    .line 125
    invoke-virtual {p1, v6}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lorg/jline/terminal/Attributes$OutputFlag;->name()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lorg/jline/terminal/Attributes$OutputFlag;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v6    # "flag":Lorg/jline/terminal/Attributes$OutputFlag;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 128
    :cond_5
    invoke-static {}, Lorg/jline/terminal/Attributes$ControlFlag;->values()[Lorg/jline/terminal/Attributes$ControlFlag;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_4
    if-ge v4, v2, :cond_8

    aget-object v6, v1, v4

    .line 129
    .local v6, "flag":Lorg/jline/terminal/Attributes$ControlFlag;
    invoke-virtual {p1, v6}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v7

    invoke-virtual {p2, v6}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v8

    if-eq v7, v8, :cond_7

    .line 130
    invoke-virtual {p1, v6}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Lorg/jline/terminal/Attributes$ControlFlag;->name()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lorg/jline/terminal/Attributes$ControlFlag;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v6    # "flag":Lorg/jline/terminal/Attributes$ControlFlag;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 133
    :cond_8
    invoke-static {}, Lorg/jline/terminal/Attributes$LocalFlag;->values()[Lorg/jline/terminal/Attributes$LocalFlag;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_6
    if-ge v4, v2, :cond_b

    aget-object v6, v1, v4

    .line 134
    .local v6, "flag":Lorg/jline/terminal/Attributes$LocalFlag;
    invoke-virtual {p1, v6}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v7

    invoke-virtual {p2, v6}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v8

    if-eq v7, v8, :cond_a

    .line 135
    invoke-virtual {p1, v6}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v6}, Lorg/jline/terminal/Attributes$LocalFlag;->name()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lorg/jline/terminal/Attributes$LocalFlag;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_7
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v6    # "flag":Lorg/jline/terminal/Attributes$LocalFlag;
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 138
    :cond_b
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "^-"

    goto :goto_8

    :cond_c
    const-string v1, "undef"

    .line 139
    .local v1, "undef":Ljava/lang/String;
    :goto_8
    invoke-static {}, Lorg/jline/terminal/Attributes$ControlChar;->values()[Lorg/jline/terminal/Attributes$ControlChar;

    move-result-object v2

    array-length v4, v2

    :goto_9
    if-ge v3, v4, :cond_14

    aget-object v5, v2, v3

    .line 140
    .local v5, "cchar":Lorg/jline/terminal/Attributes$ControlChar;
    invoke-virtual {p1, v5}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v6

    .line 141
    .local v6, "v":I
    if-ltz v6, :cond_13

    invoke-virtual {p2, v5}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v7

    if-eq v6, v7, :cond_13

    .line 142
    const-string v7, ""

    .line 143
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/jline/terminal/Attributes$ControlChar;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v8, Lorg/jline/terminal/Attributes$ControlChar;->VMIN:Lorg/jline/terminal/Attributes$ControlChar;

    if-eq v5, v8, :cond_12

    sget-object v8, Lorg/jline/terminal/Attributes$ControlChar;->VTIME:Lorg/jline/terminal/Attributes$ControlChar;

    if-ne v5, v8, :cond_d

    goto :goto_a

    .line 147
    :cond_d
    if-nez v6, :cond_e

    .line 148
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 151
    :cond_e
    const/16 v8, 0x80

    if-lt v6, v8, :cond_f

    .line 152
    add-int/lit8 v6, v6, -0x80

    .line 153
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "M-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 155
    :cond_f
    const/16 v8, 0x20

    if-lt v6, v8, :cond_10

    const/16 v8, 0x7f

    if-ne v6, v8, :cond_11

    .line 156
    :cond_10
    xor-int/lit8 v6, v6, 0x40

    .line 157
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "^"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 159
    :cond_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-char v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 160
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 145
    :cond_12
    :goto_a
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v5    # "cchar":Lorg/jline/terminal/Attributes$ControlChar;
    .end local v6    # "v":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_13
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    .line 164
    :cond_14
    return-object v0
.end method

.method public getMasterInput()Ljava/io/InputStream;
    .locals 1

    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMasterOutput()Ljava/io/OutputStream;
    .locals 1

    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/jline/terminal/impl/ExecPty;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Lorg/jline/terminal/Size;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lorg/jline/terminal/impl/ExecPty;->doGetConfig()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "cfg":Ljava/lang/String;
    invoke-static {v0}, Lorg/jline/terminal/impl/ExecPty;->doGetSize(Ljava/lang/String;)Lorg/jline/terminal/Size;

    move-result-object v1

    return-object v1
.end method

.method public getSlaveOutput()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-boolean v0, p0, Lorg/jline/terminal/impl/ExecPty;->system:Z

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v1, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/ExecPty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 80
    :goto_0
    return-object v0
.end method

.method public setSize(Lorg/jline/terminal/Size;)V
    .locals 10
    .param p1, "size"    # Lorg/jline/terminal/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-boolean v0, p0, Lorg/jline/terminal/impl/ExecPty;->system:Z

    const-string v1, "rows"

    const/4 v2, 0x5

    const/4 v3, 0x4

    const-string v4, "columns"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 284
    new-array v0, v2, [Ljava/lang/String;

    sget-object v2, Lorg/jline/utils/OSUtils;->STTY_COMMAND:Ljava/lang/String;

    aput-object v2, v0, v8

    aput-object v4, v0, v7

    .line 286
    invoke-virtual {p1}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    aput-object v1, v0, v5

    .line 287
    invoke-virtual {p1}, Lorg/jline/terminal/Size;->getRows()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 284
    invoke-static {v7, v0}, Lorg/jline/utils/ExecHelper;->exec(Z[Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 289
    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    sget-object v9, Lorg/jline/utils/OSUtils;->STTY_COMMAND:Ljava/lang/String;

    aput-object v9, v0, v8

    sget-object v9, Lorg/jline/utils/OSUtils;->STTY_F_OPTION:Ljava/lang/String;

    aput-object v9, v0, v7

    .line 291
    invoke-virtual {p0}, Lorg/jline/terminal/impl/ExecPty;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    aput-object v4, v0, v5

    .line 292
    invoke-virtual {p1}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    aput-object v1, v0, v2

    const/4 v1, 0x6

    .line 293
    invoke-virtual {p1}, Lorg/jline/terminal/Size;->getRows()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 289
    invoke-static {v8, v0}, Lorg/jline/utils/ExecHelper;->exec(Z[Ljava/lang/String;)Ljava/lang/String;

    .line 295
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExecPty["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jline/terminal/impl/ExecPty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jline/terminal/impl/ExecPty;->system:Z

    if-eqz v1, :cond_0

    const-string v1, ", system]"

    goto :goto_0

    :cond_0
    const-string v1, "]"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
