.class public Lcom/alcineo/softpos/necaoli;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"


# static fields
.field public static final acileon:I = 0xf8

.field public static final aoleinc:Lcom/alcineo/softpos/oalecni;

.field public static final noaceli:I = 0x1


# direct methods
.method public static synthetic $r8$lambda$u-6_GpMQQdUHvkKPla9t7d4teFo(Lcom/alcineo/softpos/oeicanl;)Lcom/alcineo/softpos/necaoli;
    .locals 1

    new-instance v0, Lcom/alcineo/softpos/necaoli;

    invoke-direct {v0, p0}, Lcom/alcineo/softpos/necaoli;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/softpos/necaoli$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/softpos/necaoli$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/necaoli;->aoleinc:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method private constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-void
.end method


# virtual methods
.method public native acileon()I
.end method

.method public native aoleinc()I
.end method

.method public native enolcai()[Z
.end method

.method public native getCommandName()Ljava/lang/String;
.end method

.method public native noaceli()Z
.end method

.method public native ocenlai()I
.end method
