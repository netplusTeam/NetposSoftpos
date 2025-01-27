.class public abstract Lcom/alcineo/softpos/cnaolie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alcineo/softpos/cnaolie$acileon;
    }
.end annotation


# instance fields
.field private acileon:Lcom/alcineo/softpos/alicneo;

.field private aoleinc:Lcom/alcineo/softpos/oeicanl;

.field private noaceli:Lcom/alcineo/softpos/cnaolie$acileon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native acileon()Lcom/alcineo/softpos/oeicanl;
.end method

.method public native acileon(Lcom/alcineo/softpos/alicneo;)V
.end method

.method public native acileon(Lcom/alcineo/softpos/cnaolie$acileon;)V
.end method

.method public final native acileon(Lcom/alcineo/softpos/oeicanl;)V
.end method

.method public native aoleinc()Lcom/alcineo/softpos/cnaolie$acileon;
.end method

.method public native noaceli()Lcom/alcineo/softpos/alicneo;
.end method
