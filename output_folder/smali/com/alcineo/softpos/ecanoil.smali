.class public Lcom/alcineo/softpos/ecanoil;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"


# static fields
.field public static final acileon:I = 0xe6

.field public static final aoleinc:Lcom/alcineo/softpos/oalecni;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/softpos/ecanoil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/softpos/ecanoil$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/ecanoil;->aoleinc:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-void
.end method


# virtual methods
.method public native getCommandName()Ljava/lang/String;
.end method
