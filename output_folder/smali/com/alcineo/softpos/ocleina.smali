.class public Lcom/alcineo/softpos/ocleina;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alcineo/softpos/ocleina$acileon;
    }
.end annotation


# static fields
.field public static final acileon:I = 0xd1

.field public static final aoleinc:Lcom/alcineo/softpos/oalecni;

.field public static final enolcai:I = 0x1

.field public static final noaceli:I = 0x0

.field public static final ocenlai:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/softpos/ocleina$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/softpos/ocleina$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/ocleina;->aoleinc:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method private constructor <init>(I[B)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0xd1

    invoke-direct {p0, v0, p1, p2}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    return-void
.end method

.method public static native acileon()Lcom/alcineo/softpos/ocleina;
.end method

.method public static native acileon(Lcom/alcineo/softpos/ocleina$acileon;)Lcom/alcineo/softpos/ocleina;
.end method

.method public static native aoleinc()Lcom/alcineo/softpos/ocleina;
.end method


# virtual methods
.method public native getCommandName()Ljava/lang/String;
.end method
