.class public Lcom/alcineo/softpos/ieaolcn;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"


# static fields
.field public static final acileon:I = 0xf2

.field public static final aoleinc:Lcom/alcineo/softpos/oalecni;


# direct methods
.method public static synthetic $r8$lambda$lLDJQo4_W-oGJuxeUIu4nFcOIZw(Lcom/alcineo/softpos/oeicanl;)Lcom/alcineo/softpos/ieaolcn;
    .locals 1

    new-instance v0, Lcom/alcineo/softpos/ieaolcn;

    invoke-direct {v0, p0}, Lcom/alcineo/softpos/ieaolcn;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/softpos/ieaolcn$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/softpos/ieaolcn$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/ieaolcn;->aoleinc:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method private constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    const/16 v0, 0xf2

    invoke-static {p1, v0}, Lcom/alcineo/softpos/alicneo;->checkCommandValue(Lcom/alcineo/softpos/oeicanl;I)V

    return-void
.end method


# virtual methods
.method public native acileon()B
.end method

.method public native getCommandName()Ljava/lang/String;
.end method
