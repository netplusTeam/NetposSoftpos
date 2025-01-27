.class public Lcom/alcineo/softpos/nacieol;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"

# interfaces
.implements Lcom/alcineo/softpos/loceina;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alcineo/softpos/nacieol$acileon;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alcineo/softpos/alicneo;",
        "Lcom/alcineo/softpos/loceina<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final acileon:I = 0x53

.field public static final aoleinc:Lcom/alcineo/softpos/oalecni;

.field public static final enolcai:I = 0x2

.field public static final lneaico:I = 0x6

.field public static final nacieol:I = 0x4

.field public static final noaceli:I = 0x1

.field public static final noelcai:I = 0x5

.field public static final ocenlai:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/softpos/nacieol$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alcineo/softpos/nacieol$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/nacieol;->aoleinc:Lcom/alcineo/softpos/oalecni;

    return-void
.end method

.method private constructor <init>(I[B)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x53

    invoke-direct {p0, v0, p1, p2}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/alicneo;-><init>(Lcom/alcineo/softpos/oeicanl;)V

    const/16 v0, 0x53

    invoke-static {p1, v0}, Lcom/alcineo/softpos/alicneo;->checkCommandValue(Lcom/alcineo/softpos/oeicanl;I)V

    return-void
.end method

.method public static native acileon()Lcom/alcineo/softpos/nacieol;
.end method

.method public static native acileon(Lcom/alcineo/administrative/pci/utils/PrivateAlgo;Lcom/alcineo/softpos/nacieol$acileon;Lcom/alcineo/softpos/nclioae;I)Lcom/alcineo/softpos/nacieol;
.end method

.method public static native acileon(Lcom/alcineo/softpos/nclioae;)Lcom/alcineo/softpos/nacieol;
.end method

.method public static native acileon([B)Lcom/alcineo/softpos/nacieol;
.end method

.method public static native aoleinc()Lcom/alcineo/softpos/nacieol;
.end method

.method public static native aoleinc(Lcom/alcineo/softpos/nclioae;)Lcom/alcineo/softpos/nacieol;
.end method

.method public static native aoleinc([B)Lcom/alcineo/softpos/nacieol;
.end method


# virtual methods
.method public native getCommandName()Ljava/lang/String;
.end method

.method public bridge native synthetic getExecutionResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public native getExecutionResult()Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public native getSubCommandName()Ljava/lang/String;
.end method
