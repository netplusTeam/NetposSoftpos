.class public final Lcom/alcineo/softpos/oeicanl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private acileon:I

.field private aoleinc:Ljava/lang/Integer;

.field private noaceli:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Integer;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    const/4 p3, 0x0

    new-array p3, p3, [B

    :cond_0
    iput p1, p0, Lcom/alcineo/softpos/oeicanl;->acileon:I

    iput-object p2, p0, Lcom/alcineo/softpos/oeicanl;->aoleinc:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/alcineo/softpos/oeicanl;->noaceli:[B

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/oeicanl;)V
    .locals 2

    iget v0, p1, Lcom/alcineo/softpos/oeicanl;->acileon:I

    iget-object v1, p1, Lcom/alcineo/softpos/oeicanl;->aoleinc:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/alcineo/softpos/oeicanl;->noaceli:[B

    invoke-direct {p0, v0, v1, p1}, Lcom/alcineo/softpos/oeicanl;-><init>(ILjava/lang/Integer;[B)V

    return-void
.end method


# virtual methods
.method public native acileon()I
.end method

.method public native acileon([B)V
.end method

.method public native aoleinc()[B
.end method

.method public native noaceli()Ljava/lang/Integer;
.end method
