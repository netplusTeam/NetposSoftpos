.class public enum Lio/netty/handler/codec/http/HttpStatusClass;
.super Ljava/lang/Enum;
.source "HttpStatusClass.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/http/HttpStatusClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/http/HttpStatusClass;

.field public static final enum CLIENT_ERROR:Lio/netty/handler/codec/http/HttpStatusClass;

.field public static final enum INFORMATIONAL:Lio/netty/handler/codec/http/HttpStatusClass;

.field public static final enum REDIRECTION:Lio/netty/handler/codec/http/HttpStatusClass;

.field public static final enum SERVER_ERROR:Lio/netty/handler/codec/http/HttpStatusClass;

.field public static final enum SUCCESS:Lio/netty/handler/codec/http/HttpStatusClass;

.field public static final enum UNKNOWN:Lio/netty/handler/codec/http/HttpStatusClass;


# instance fields
.field private final defaultReasonPhrase:Lio/netty/util/AsciiString;

.field private final max:I

.field private final min:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 28
    new-instance v6, Lio/netty/handler/codec/http/HttpStatusClass;

    const-string v1, "INFORMATIONAL"

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/16 v4, 0xc8

    const-string v5, "Informational"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/HttpStatusClass;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lio/netty/handler/codec/http/HttpStatusClass;->INFORMATIONAL:Lio/netty/handler/codec/http/HttpStatusClass;

    .line 32
    new-instance v0, Lio/netty/handler/codec/http/HttpStatusClass;

    const-string v8, "SUCCESS"

    const/4 v9, 0x1

    const/16 v10, 0xc8

    const/16 v11, 0x12c

    const-string v12, "Success"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/netty/handler/codec/http/HttpStatusClass;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/http/HttpStatusClass;->SUCCESS:Lio/netty/handler/codec/http/HttpStatusClass;

    .line 36
    new-instance v1, Lio/netty/handler/codec/http/HttpStatusClass;

    const-string v14, "REDIRECTION"

    const/4 v15, 0x2

    const/16 v16, 0x12c

    const/16 v17, 0x190

    const-string v18, "Redirection"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lio/netty/handler/codec/http/HttpStatusClass;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v1, Lio/netty/handler/codec/http/HttpStatusClass;->REDIRECTION:Lio/netty/handler/codec/http/HttpStatusClass;

    .line 40
    new-instance v2, Lio/netty/handler/codec/http/HttpStatusClass;

    const-string v8, "CLIENT_ERROR"

    const/4 v9, 0x3

    const/16 v10, 0x190

    const/16 v11, 0x1f4

    const-string v12, "Client Error"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lio/netty/handler/codec/http/HttpStatusClass;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v2, Lio/netty/handler/codec/http/HttpStatusClass;->CLIENT_ERROR:Lio/netty/handler/codec/http/HttpStatusClass;

    .line 44
    new-instance v3, Lio/netty/handler/codec/http/HttpStatusClass;

    const-string v14, "SERVER_ERROR"

    const/4 v15, 0x4

    const/16 v16, 0x1f4

    const/16 v17, 0x258

    const-string v18, "Server Error"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lio/netty/handler/codec/http/HttpStatusClass;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lio/netty/handler/codec/http/HttpStatusClass;->SERVER_ERROR:Lio/netty/handler/codec/http/HttpStatusClass;

    .line 48
    new-instance v4, Lio/netty/handler/codec/http/HttpStatusClass$1;

    const-string v8, "UNKNOWN"

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "Unknown Status"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lio/netty/handler/codec/http/HttpStatusClass$1;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v4, Lio/netty/handler/codec/http/HttpStatusClass;->UNKNOWN:Lio/netty/handler/codec/http/HttpStatusClass;

    .line 24
    const/4 v5, 0x6

    new-array v5, v5, [Lio/netty/handler/codec/http/HttpStatusClass;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v3, v5, v0

    const/4 v0, 0x5

    aput-object v4, v5, v0

    sput-object v5, Lio/netty/handler/codec/http/HttpStatusClass;->$VALUES:[Lio/netty/handler/codec/http/HttpStatusClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "defaultReasonPhrase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput p3, p0, Lio/netty/handler/codec/http/HttpStatusClass;->min:I

    .line 104
    iput p4, p0, Lio/netty/handler/codec/http/HttpStatusClass;->max:I

    .line 105
    invoke-static {p5}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpStatusClass;->defaultReasonPhrase:Lio/netty/util/AsciiString;

    .line 106
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILjava/lang/String;Lio/netty/handler/codec/http/HttpStatusClass$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Lio/netty/handler/codec/http/HttpStatusClass$1;

    .line 24
    invoke-direct/range {p0 .. p5}, Lio/netty/handler/codec/http/HttpStatusClass;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method private static digit(C)I
    .locals 1
    .param p0, "c"    # C

    .line 91
    add-int/lit8 v0, p0, -0x30

    return v0
.end method

.method private static isDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 95
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static valueOf(I)Lio/netty/handler/codec/http/HttpStatusClass;
    .locals 2
    .param p0, "code"    # I

    .line 59
    sget-object v0, Lio/netty/handler/codec/http/HttpStatusClass;->INFORMATIONAL:Lio/netty/handler/codec/http/HttpStatusClass;

    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http/HttpStatusClass;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    return-object v0

    .line 62
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http/HttpStatusClass;->SUCCESS:Lio/netty/handler/codec/http/HttpStatusClass;

    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http/HttpStatusClass;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    return-object v0

    .line 65
    :cond_1
    sget-object v0, Lio/netty/handler/codec/http/HttpStatusClass;->REDIRECTION:Lio/netty/handler/codec/http/HttpStatusClass;

    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http/HttpStatusClass;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    return-object v0

    .line 68
    :cond_2
    sget-object v0, Lio/netty/handler/codec/http/HttpStatusClass;->CLIENT_ERROR:Lio/netty/handler/codec/http/HttpStatusClass;

    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http/HttpStatusClass;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    return-object v0

    .line 71
    :cond_3
    sget-object v0, Lio/netty/handler/codec/http/HttpStatusClass;->SERVER_ERROR:Lio/netty/handler/codec/http/HttpStatusClass;

    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http/HttpStatusClass;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 72
    return-object v0

    .line 74
    :cond_4
    sget-object v0, Lio/netty/handler/codec/http/HttpStatusClass;->UNKNOWN:Lio/netty/handler/codec/http/HttpStatusClass;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpStatusClass;
    .locals 2
    .param p0, "code"    # Ljava/lang/CharSequence;

    .line 82
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 83
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 84
    .local v0, "c0":C
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpStatusClass;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpStatusClass;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpStatusClass;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpStatusClass;->digit(C)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpStatusClass;->valueOf(I)Lio/netty/handler/codec/http/HttpStatusClass;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lio/netty/handler/codec/http/HttpStatusClass;->UNKNOWN:Lio/netty/handler/codec/http/HttpStatusClass;

    :goto_0
    return-object v1

    .line 87
    .end local v0    # "c0":C
    :cond_1
    sget-object v0, Lio/netty/handler/codec/http/HttpStatusClass;->UNKNOWN:Lio/netty/handler/codec/http/HttpStatusClass;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpStatusClass;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lio/netty/handler/codec/http/HttpStatusClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpStatusClass;

    return-object v0
.end method

.method public static values()[Lio/netty/handler/codec/http/HttpStatusClass;
    .locals 1

    .line 24
    sget-object v0, Lio/netty/handler/codec/http/HttpStatusClass;->$VALUES:[Lio/netty/handler/codec/http/HttpStatusClass;

    invoke-virtual {v0}, [Lio/netty/handler/codec/http/HttpStatusClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/http/HttpStatusClass;

    return-object v0
.end method


# virtual methods
.method public contains(I)Z
    .locals 1
    .param p1, "code"    # I

    .line 112
    iget v0, p0, Lio/netty/handler/codec/http/HttpStatusClass;->min:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lio/netty/handler/codec/http/HttpStatusClass;->max:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method defaultReasonPhrase()Lio/netty/util/AsciiString;
    .locals 1

    .line 119
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpStatusClass;->defaultReasonPhrase:Lio/netty/util/AsciiString;

    return-object v0
.end method
