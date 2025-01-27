.class public final enum Lorg/jdom2/output/LineSeparator;
.super Ljava/lang/Enum;
.source "LineSeparator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jdom2/output/LineSeparator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jdom2/output/LineSeparator;

.field public static final enum CR:Lorg/jdom2/output/LineSeparator;

.field public static final enum CRNL:Lorg/jdom2/output/LineSeparator;

.field public static final enum DEFAULT:Lorg/jdom2/output/LineSeparator;

.field public static final enum DOS:Lorg/jdom2/output/LineSeparator;

.field public static final enum NL:Lorg/jdom2/output/LineSeparator;

.field public static final enum NONE:Lorg/jdom2/output/LineSeparator;

.field public static final enum SYSTEM:Lorg/jdom2/output/LineSeparator;

.field public static final enum UNIX:Lorg/jdom2/output/LineSeparator;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 119
    new-instance v0, Lorg/jdom2/output/LineSeparator;

    const-string v1, "CRNL"

    const/4 v2, 0x0

    const-string v3, "\r\n"

    invoke-direct {v0, v1, v2, v3}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jdom2/output/LineSeparator;->CRNL:Lorg/jdom2/output/LineSeparator;

    .line 124
    new-instance v1, Lorg/jdom2/output/LineSeparator;

    const-string v4, "NL"

    const/4 v5, 0x1

    const-string v6, "\n"

    invoke-direct {v1, v4, v5, v6}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/jdom2/output/LineSeparator;->NL:Lorg/jdom2/output/LineSeparator;

    .line 128
    new-instance v4, Lorg/jdom2/output/LineSeparator;

    const-string v7, "CR"

    const/4 v8, 0x2

    const-string v9, "\r"

    invoke-direct {v4, v7, v8, v9}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/jdom2/output/LineSeparator;->CR:Lorg/jdom2/output/LineSeparator;

    .line 131
    new-instance v7, Lorg/jdom2/output/LineSeparator;

    const-string v9, "DOS"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v3}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/jdom2/output/LineSeparator;->DOS:Lorg/jdom2/output/LineSeparator;

    .line 134
    new-instance v9, Lorg/jdom2/output/LineSeparator;

    const-string v11, "UNIX"

    const/4 v12, 0x4

    invoke-direct {v9, v11, v12, v6}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/jdom2/output/LineSeparator;->UNIX:Lorg/jdom2/output/LineSeparator;

    .line 143
    new-instance v6, Lorg/jdom2/output/LineSeparator;

    const-string v11, "line.separator"

    invoke-static {v11, v3}, Lorg/jdom2/internal/SystemProperty;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "SYSTEM"

    const/4 v13, 0x5

    invoke-direct {v6, v11, v13, v3}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/jdom2/output/LineSeparator;->SYSTEM:Lorg/jdom2/output/LineSeparator;

    .line 146
    new-instance v3, Lorg/jdom2/output/LineSeparator;

    const-string v11, "NONE"

    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-direct {v3, v11, v14, v15}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/jdom2/output/LineSeparator;->NONE:Lorg/jdom2/output/LineSeparator;

    .line 157
    new-instance v11, Lorg/jdom2/output/LineSeparator;

    invoke-static {}, Lorg/jdom2/output/LineSeparator;->getDefaultLineSeparator()Ljava/lang/String;

    move-result-object v15

    const-string v14, "DEFAULT"

    const/4 v13, 0x7

    invoke-direct {v11, v14, v13, v15}, Lorg/jdom2/output/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/jdom2/output/LineSeparator;->DEFAULT:Lorg/jdom2/output/LineSeparator;

    .line 114
    const/16 v14, 0x8

    new-array v14, v14, [Lorg/jdom2/output/LineSeparator;

    aput-object v0, v14, v2

    aput-object v1, v14, v5

    aput-object v4, v14, v8

    aput-object v7, v14, v10

    aput-object v9, v14, v12

    const/4 v0, 0x5

    aput-object v6, v14, v0

    const/4 v0, 0x6

    aput-object v3, v14, v0

    aput-object v11, v14, v13

    sput-object v14, Lorg/jdom2/output/LineSeparator;->$VALUES:[Lorg/jdom2/output/LineSeparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 195
    iput-object p3, p0, Lorg/jdom2/output/LineSeparator;->value:Ljava/lang/String;

    .line 196
    return-void
.end method

.method private static getDefaultLineSeparator()Ljava/lang/String;
    .locals 4

    .line 164
    const-string v0, "org.jdom2.output.LineSeparator"

    const-string v1, "DEFAULT"

    invoke-static {v0, v1}, Lorg/jdom2/internal/SystemProperty;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "prop":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\r\n"

    if-eqz v1, :cond_0

    .line 171
    return-object v2

    .line 172
    :cond_0
    const-string v1, "SYSTEM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 174
    :cond_1
    const-string v1, "CRNL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    return-object v2

    .line 176
    :cond_2
    const-string v1, "NL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "\n"

    if-eqz v1, :cond_3

    .line 177
    return-object v3

    .line 178
    :cond_3
    const-string v1, "CR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 179
    const-string v1, "\r"

    return-object v1

    .line 180
    :cond_4
    const-string v1, "DOS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 181
    return-object v2

    .line 182
    :cond_5
    const-string v1, "UNIX"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 183
    return-object v3

    .line 184
    :cond_6
    const-string v1, "NONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 185
    const/4 v1, 0x0

    return-object v1

    .line 187
    :cond_7
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jdom2/output/LineSeparator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 114
    const-class v0, Lorg/jdom2/output/LineSeparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jdom2/output/LineSeparator;

    return-object v0
.end method

.method public static values()[Lorg/jdom2/output/LineSeparator;
    .locals 1

    .line 114
    sget-object v0, Lorg/jdom2/output/LineSeparator;->$VALUES:[Lorg/jdom2/output/LineSeparator;

    invoke-virtual {v0}, [Lorg/jdom2/output/LineSeparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/output/LineSeparator;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/jdom2/output/LineSeparator;->value:Ljava/lang/String;

    return-object v0
.end method
