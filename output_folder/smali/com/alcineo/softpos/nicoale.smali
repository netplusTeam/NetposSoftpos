.class public Lcom/alcineo/softpos/nicoale;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"


# static fields
.field public static final enolcai:I = 0xf5

.field private static final noaceli:Lorg/slf4j/Logger;

.field public static final ocenlai:Lcom/alcineo/softpos/oalecni;


# instance fields
.field private acileon:Z

.field private aoleinc:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-class v0, Lcom/alcineo/softpos/nicoale;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/alcineo/softpos/nicoale;->noaceli:Lorg/slf4j/Logger;

    new-instance v0, Lcom/alcineo/softpos/nicoale$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/softpos/nicoale$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/nicoale;->ocenlai:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alcineo/softpos/nicoale;->acileon:Z

    iput-boolean v0, p0, Lcom/alcineo/softpos/nicoale;->aoleinc:Z

    const/16 v1, 0xf5

    invoke-static {p1, v1}, Lcom/alcineo/softpos/alicneo;->checkCommandValue(Lcom/alcineo/softpos/oeicanl;I)V

    invoke-virtual {p0}, Lcom/alcineo/softpos/alicneo;->getData()[B

    move-result-object p1

    array-length p1, p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    sget-object p1, Lcom/alcineo/softpos/nicoale;->noaceli:Lorg/slf4j/Logger;

    const-string v0, "The GET_AMOUNT command expects 2 bytes data, ignoring it."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alcineo/softpos/alicneo;->getData()[B

    move-result-object p1

    aget-byte p1, p1, v0

    const/4 v1, 0x1

    if-lez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/alcineo/softpos/nicoale;->acileon:Z

    invoke-virtual {p0}, Lcom/alcineo/softpos/alicneo;->getData()[B

    move-result-object p1

    aget-byte p1, p1, v1

    if-lez p1, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/alcineo/softpos/nicoale;->aoleinc:Z

    return-void
.end method

.method private constructor <init>(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V
    .locals 4

    sget v0, Lcom/alcineo/softpos/alicneo;->SCMD_SUCCESS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xf5

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alcineo/softpos/nicoale;->acileon:Z

    iput-boolean v0, p0, Lcom/alcineo/softpos/nicoale;->aoleinc:Z

    const/16 v1, 0xc

    new-array v2, v1, [B

    const/4 v3, 0x6

    if-eqz p1, :cond_0

    invoke-static {p1, v1}, Lcom/alcineo/softpos/oelacni;->acileon(Ljava/math/BigDecimal;I)[B

    move-result-object p1

    invoke-static {p1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2, v1}, Lcom/alcineo/softpos/oelacni;->acileon(Ljava/math/BigDecimal;I)[B

    move-result-object p1

    invoke-static {p1, v0, v2, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/alcineo/softpos/alicneo;->a([B)V

    return-void
.end method

.method public static native acileon(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Lcom/alcineo/softpos/alicneo;
.end method


# virtual methods
.method public native acileon()Z
.end method

.method public native aoleinc()Z
.end method

.method public native getCommandName()Ljava/lang/String;
.end method
