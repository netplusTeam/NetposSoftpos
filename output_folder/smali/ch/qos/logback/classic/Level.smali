.class public final Lch/qos/logback/classic/Level;
.super Ljava/lang/Object;
.source "Level.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALL:Lch/qos/logback/classic/Level;

.field public static final ALL_INT:I = -0x80000000

.field public static final ALL_INTEGER:Ljava/lang/Integer;

.field public static final DEBUG:Lch/qos/logback/classic/Level;

.field public static final DEBUG_INT:I = 0x2710

.field public static final DEBUG_INTEGER:Ljava/lang/Integer;

.field public static final ERROR:Lch/qos/logback/classic/Level;

.field public static final ERROR_INT:I = 0x9c40

.field public static final ERROR_INTEGER:Ljava/lang/Integer;

.field public static final INFO:Lch/qos/logback/classic/Level;

.field public static final INFO_INT:I = 0x4e20

.field public static final INFO_INTEGER:Ljava/lang/Integer;

.field public static final OFF:Lch/qos/logback/classic/Level;

.field public static final OFF_INT:I = 0x7fffffff

.field public static final OFF_INTEGER:Ljava/lang/Integer;

.field public static final TRACE:Lch/qos/logback/classic/Level;

.field public static final TRACE_INT:I = 0x1388

.field public static final TRACE_INTEGER:Ljava/lang/Integer;

.field public static final WARN:Lch/qos/logback/classic/Level;

.field public static final WARN_INT:I = 0x7530

.field public static final WARN_INTEGER:Ljava/lang/Integer;

.field private static final serialVersionUID:J = -0xb4c3d0f032cb399L


# instance fields
.field public final levelInt:I

.field public final levelStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 37
    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lch/qos/logback/classic/Level;->OFF_INTEGER:Ljava/lang/Integer;

    .line 38
    const v1, 0x9c40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lch/qos/logback/classic/Level;->ERROR_INTEGER:Ljava/lang/Integer;

    .line 39
    const/16 v2, 0x7530

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lch/qos/logback/classic/Level;->WARN_INTEGER:Ljava/lang/Integer;

    .line 40
    const/16 v3, 0x4e20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sput-object v4, Lch/qos/logback/classic/Level;->INFO_INTEGER:Ljava/lang/Integer;

    .line 41
    const/16 v4, 0x2710

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sput-object v5, Lch/qos/logback/classic/Level;->DEBUG_INTEGER:Ljava/lang/Integer;

    .line 42
    const/16 v5, 0x1388

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sput-object v6, Lch/qos/logback/classic/Level;->TRACE_INTEGER:Ljava/lang/Integer;

    .line 43
    const/high16 v6, -0x80000000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lch/qos/logback/classic/Level;->ALL_INTEGER:Ljava/lang/Integer;

    .line 48
    new-instance v7, Lch/qos/logback/classic/Level;

    const-string v8, "OFF"

    invoke-direct {v7, v0, v8}, Lch/qos/logback/classic/Level;-><init>(ILjava/lang/String;)V

    sput-object v7, Lch/qos/logback/classic/Level;->OFF:Lch/qos/logback/classic/Level;

    .line 54
    new-instance v0, Lch/qos/logback/classic/Level;

    const-string v7, "ERROR"

    invoke-direct {v0, v1, v7}, Lch/qos/logback/classic/Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    .line 59
    new-instance v0, Lch/qos/logback/classic/Level;

    const-string v1, "WARN"

    invoke-direct {v0, v2, v1}, Lch/qos/logback/classic/Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    .line 65
    new-instance v0, Lch/qos/logback/classic/Level;

    const-string v1, "INFO"

    invoke-direct {v0, v3, v1}, Lch/qos/logback/classic/Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    .line 71
    new-instance v0, Lch/qos/logback/classic/Level;

    const-string v1, "DEBUG"

    invoke-direct {v0, v4, v1}, Lch/qos/logback/classic/Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    .line 77
    new-instance v0, Lch/qos/logback/classic/Level;

    const-string v1, "TRACE"

    invoke-direct {v0, v5, v1}, Lch/qos/logback/classic/Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lch/qos/logback/classic/Level;->TRACE:Lch/qos/logback/classic/Level;

    .line 82
    new-instance v0, Lch/qos/logback/classic/Level;

    const-string v1, "ALL"

    invoke-direct {v0, v6, v1}, Lch/qos/logback/classic/Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lch/qos/logback/classic/Level;->ALL:Lch/qos/logback/classic/Level;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "levelInt"    # I
    .param p2, "levelStr"    # Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lch/qos/logback/classic/Level;->levelInt:I

    .line 92
    iput-object p2, p0, Lch/qos/logback/classic/Level;->levelStr:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public static fromLocationAwareLoggerInteger(I)Lch/qos/logback/classic/Level;
    .locals 3
    .param p0, "levelInt"    # I

    .line 247
    sparse-switch p0, :sswitch_data_0

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not a valid level value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :sswitch_0
    sget-object v0, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    .line 262
    .local v0, "level":Lch/qos/logback/classic/Level;
    goto :goto_0

    .line 258
    .end local v0    # "level":Lch/qos/logback/classic/Level;
    :sswitch_1
    sget-object v0, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    .line 259
    .restart local v0    # "level":Lch/qos/logback/classic/Level;
    goto :goto_0

    .line 255
    .end local v0    # "level":Lch/qos/logback/classic/Level;
    :sswitch_2
    sget-object v0, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    .line 256
    .restart local v0    # "level":Lch/qos/logback/classic/Level;
    goto :goto_0

    .line 252
    .end local v0    # "level":Lch/qos/logback/classic/Level;
    :sswitch_3
    sget-object v0, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    .line 253
    .restart local v0    # "level":Lch/qos/logback/classic/Level;
    goto :goto_0

    .line 249
    .end local v0    # "level":Lch/qos/logback/classic/Level;
    :sswitch_4
    sget-object v0, Lch/qos/logback/classic/Level;->TRACE:Lch/qos/logback/classic/Level;

    .line 250
    .restart local v0    # "level":Lch/qos/logback/classic/Level;
    nop

    .line 266
    :goto_0
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0xa -> :sswitch_3
        0x14 -> :sswitch_2
        0x1e -> :sswitch_1
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 234
    iget v0, p0, Lch/qos/logback/classic/Level;->levelInt:I

    invoke-static {v0}, Lch/qos/logback/classic/Level;->toLevel(I)Lch/qos/logback/classic/Level;

    move-result-object v0

    return-object v0
.end method

.method public static toLevel(I)Lch/qos/logback/classic/Level;
    .locals 1
    .param p0, "val"    # I

    .line 166
    sget-object v0, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    invoke-static {p0, v0}, Lch/qos/logback/classic/Level;->toLevel(ILch/qos/logback/classic/Level;)Lch/qos/logback/classic/Level;

    move-result-object v0

    return-object v0
.end method

.method public static toLevel(ILch/qos/logback/classic/Level;)Lch/qos/logback/classic/Level;
    .locals 1
    .param p0, "val"    # I
    .param p1, "defaultLevel"    # Lch/qos/logback/classic/Level;

    .line 174
    sparse-switch p0, :sswitch_data_0

    .line 190
    return-object p1

    .line 188
    :sswitch_0
    sget-object v0, Lch/qos/logback/classic/Level;->OFF:Lch/qos/logback/classic/Level;

    return-object v0

    .line 186
    :sswitch_1
    sget-object v0, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    return-object v0

    .line 184
    :sswitch_2
    sget-object v0, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    return-object v0

    .line 182
    :sswitch_3
    sget-object v0, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    return-object v0

    .line 180
    :sswitch_4
    sget-object v0, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    return-object v0

    .line 178
    :sswitch_5
    sget-object v0, Lch/qos/logback/classic/Level;->TRACE:Lch/qos/logback/classic/Level;

    return-object v0

    .line 176
    :sswitch_6
    sget-object v0, Lch/qos/logback/classic/Level;->ALL:Lch/qos/logback/classic/Level;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_6
        0x1388 -> :sswitch_5
        0x2710 -> :sswitch_4
        0x4e20 -> :sswitch_3
        0x7530 -> :sswitch_2
        0x9c40 -> :sswitch_1
        0x7fffffff -> :sswitch_0
    .end sparse-switch
.end method

.method public static toLevel(Ljava/lang/String;)Lch/qos/logback/classic/Level;
    .locals 1
    .param p0, "sArg"    # Ljava/lang/String;

    .line 148
    sget-object v0, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    invoke-static {p0, v0}, Lch/qos/logback/classic/Level;->toLevel(Ljava/lang/String;Lch/qos/logback/classic/Level;)Lch/qos/logback/classic/Level;

    move-result-object v0

    return-object v0
.end method

.method public static toLevel(Ljava/lang/String;Lch/qos/logback/classic/Level;)Lch/qos/logback/classic/Level;
    .locals 1
    .param p0, "sArg"    # Ljava/lang/String;
    .param p1, "defaultLevel"    # Lch/qos/logback/classic/Level;

    .line 199
    if-nez p0, :cond_0

    .line 200
    return-object p1

    .line 203
    :cond_0
    const-string v0, "ALL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    sget-object v0, Lch/qos/logback/classic/Level;->ALL:Lch/qos/logback/classic/Level;

    return-object v0

    .line 206
    :cond_1
    const-string v0, "TRACE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    sget-object v0, Lch/qos/logback/classic/Level;->TRACE:Lch/qos/logback/classic/Level;

    return-object v0

    .line 209
    :cond_2
    const-string v0, "DEBUG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    sget-object v0, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    return-object v0

    .line 212
    :cond_3
    const-string v0, "INFO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    sget-object v0, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    return-object v0

    .line 215
    :cond_4
    const-string v0, "WARN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    sget-object v0, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    return-object v0

    .line 218
    :cond_5
    const-string v0, "ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 219
    sget-object v0, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    return-object v0

    .line 221
    :cond_6
    const-string v0, "OFF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 222
    sget-object v0, Lch/qos/logback/classic/Level;->OFF:Lch/qos/logback/classic/Level;

    return-object v0

    .line 224
    :cond_7
    return-object p1
.end method

.method public static toLocationAwareLoggerInteger(Lch/qos/logback/classic/Level;)I
    .locals 3
    .param p0, "level"    # Lch/qos/logback/classic/Level;

    .line 278
    if-eqz p0, :cond_0

    .line 280
    invoke-virtual {p0}, Lch/qos/logback/classic/Level;->toInt()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not a valid level value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :sswitch_0
    const/16 v0, 0x28

    return v0

    .line 288
    :sswitch_1
    const/16 v0, 0x1e

    return v0

    .line 286
    :sswitch_2
    const/16 v0, 0x14

    return v0

    .line 284
    :sswitch_3
    const/16 v0, 0xa

    return v0

    .line 282
    :sswitch_4
    const/4 v0, 0x0

    return v0

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null level parameter is not admitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x1388 -> :sswitch_4
        0x2710 -> :sswitch_3
        0x4e20 -> :sswitch_2
        0x7530 -> :sswitch_1
        0x9c40 -> :sswitch_0
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lch/qos/logback/classic/Level;
    .locals 1
    .param p0, "sArg"    # Ljava/lang/String;

    .line 158
    sget-object v0, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    invoke-static {p0, v0}, Lch/qos/logback/classic/Level;->toLevel(Ljava/lang/String;Lch/qos/logback/classic/Level;)Lch/qos/logback/classic/Level;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isGreaterOrEqual(Lch/qos/logback/classic/Level;)Z
    .locals 2
    .param p1, "r"    # Lch/qos/logback/classic/Level;

    .line 140
    iget v0, p0, Lch/qos/logback/classic/Level;->levelInt:I

    iget v1, p1, Lch/qos/logback/classic/Level;->levelInt:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toInt()I
    .locals 1

    .line 106
    iget v0, p0, Lch/qos/logback/classic/Level;->levelInt:I

    return v0
.end method

.method public toInteger()Ljava/lang/Integer;
    .locals 3

    .line 115
    iget v0, p0, Lch/qos/logback/classic/Level;->levelInt:I

    sparse-switch v0, :sswitch_data_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/classic/Level;->levelStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lch/qos/logback/classic/Level;->levelInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :sswitch_0
    sget-object v0, Lch/qos/logback/classic/Level;->OFF_INTEGER:Ljava/lang/Integer;

    return-object v0

    .line 127
    :sswitch_1
    sget-object v0, Lch/qos/logback/classic/Level;->ERROR_INTEGER:Ljava/lang/Integer;

    return-object v0

    .line 125
    :sswitch_2
    sget-object v0, Lch/qos/logback/classic/Level;->WARN_INTEGER:Ljava/lang/Integer;

    return-object v0

    .line 123
    :sswitch_3
    sget-object v0, Lch/qos/logback/classic/Level;->INFO_INTEGER:Ljava/lang/Integer;

    return-object v0

    .line 121
    :sswitch_4
    sget-object v0, Lch/qos/logback/classic/Level;->DEBUG_INTEGER:Ljava/lang/Integer;

    return-object v0

    .line 119
    :sswitch_5
    sget-object v0, Lch/qos/logback/classic/Level;->TRACE_INTEGER:Ljava/lang/Integer;

    return-object v0

    .line 117
    :sswitch_6
    sget-object v0, Lch/qos/logback/classic/Level;->ALL_INTEGER:Ljava/lang/Integer;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_6
        0x1388 -> :sswitch_5
        0x2710 -> :sswitch_4
        0x4e20 -> :sswitch_3
        0x7530 -> :sswitch_2
        0x9c40 -> :sswitch_1
        0x7fffffff -> :sswitch_0
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lch/qos/logback/classic/Level;->levelStr:Ljava/lang/String;

    return-object v0
.end method
