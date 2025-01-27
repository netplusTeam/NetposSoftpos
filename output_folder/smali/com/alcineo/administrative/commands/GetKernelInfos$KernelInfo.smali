.class public Lcom/alcineo/administrative/commands/GetKernelInfos$KernelInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alcineo/administrative/commands/GetKernelInfos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelInfo"
.end annotation


# instance fields
.field public checksums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alcineo/softpos/oielacn<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public enabled:Z

.field public kernel:Lcom/alcineo/administrative/Kernel;

.field public kernelBuild:Ljava/lang/String;

.field public kernelVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alcineo/administrative/commands/GetKernelInfos$KernelInfo;->checksums:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public native toString()Ljava/lang/String;
.end method
