.class Lcom/sleepycat/persist/model/BytecodeEnhancer$NotPersistentException;
.super Ljava/lang/RuntimeException;
.source "BytecodeEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/model/BytecodeEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotPersistentException"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method
