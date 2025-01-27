.class public final Lcom/alcineo/softpos/locniae$acileon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alcineo/softpos/oalecni;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alcineo/softpos/locniae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


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
.method public native acileon(Lcom/alcineo/softpos/oeicanl;)Lcom/alcineo/softpos/alicneo;
.end method
