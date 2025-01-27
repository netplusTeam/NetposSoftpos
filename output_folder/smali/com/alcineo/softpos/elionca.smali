.class public Lcom/alcineo/softpos/elionca;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"


# static fields
.field public static final acileon:I = 0xeb

.field public static final aoleinc:Lcom/alcineo/softpos/oalecni;

.field public static final enolcai:I = 0x8a

.field public static final noaceli:I = 0x89

.field public static final ocenlai:I = 0x8c


# direct methods
.method public static synthetic $r8$lambda$XHERVvP7CiPqZptlzmcqhxun2yo(Lcom/alcineo/softpos/oeicanl;)Lcom/alcineo/softpos/elionca;
    .locals 1

    new-instance v0, Lcom/alcineo/softpos/elionca;

    invoke-direct {v0, p0}, Lcom/alcineo/softpos/elionca;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/softpos/elionca$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/softpos/elionca$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/elionca;->aoleinc:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method private constructor <init>(I[B)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0xeb

    invoke-direct {p0, v0, p1, p2}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    const/16 v0, 0xeb

    invoke-static {p1, v0}, Lcom/alcineo/softpos/alicneo;->checkCommandValue(Lcom/alcineo/softpos/oeicanl;I)V

    return-void
.end method

.method public static native acileon()Lcom/alcineo/softpos/alicneo;
.end method

.method public static native acileon(Ljava/lang/String;)Lcom/alcineo/softpos/alicneo;
.end method

.method public static native aoleinc()Lcom/alcineo/softpos/alicneo;
.end method


# virtual methods
.method public native getCommandName()Ljava/lang/String;
.end method
