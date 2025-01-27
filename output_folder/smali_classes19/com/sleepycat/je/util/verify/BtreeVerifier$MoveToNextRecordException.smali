.class Lcom/sleepycat/je/util/verify/BtreeVerifier$MoveToNextRecordException;
.super Ljava/lang/Exception;
.source "BtreeVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/util/verify/BtreeVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveToNextRecordException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2235
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/util/verify/BtreeVerifier$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/util/verify/BtreeVerifier$1;

    .line 2235
    invoke-direct {p0}, Lcom/sleepycat/je/util/verify/BtreeVerifier$MoveToNextRecordException;-><init>()V

    return-void
.end method
