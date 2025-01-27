.class final Lio/netty/util/ReferenceCountUtil$ReleasingTask;
.super Ljava/lang/Object;
.source "ReferenceCountUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/ReferenceCountUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReleasingTask"
.end annotation


# instance fields
.field private final decrement:I

.field private final obj:Lio/netty/util/ReferenceCounted;


# direct methods
.method constructor <init>(Lio/netty/util/ReferenceCounted;I)V
    .locals 0
    .param p1, "obj"    # Lio/netty/util/ReferenceCounted;
    .param p2, "decrement"    # I

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lio/netty/util/ReferenceCountUtil$ReleasingTask;->obj:Lio/netty/util/ReferenceCounted;

    .line 181
    iput p2, p0, Lio/netty/util/ReferenceCountUtil$ReleasingTask;->decrement:I

    .line 182
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 187
    :try_start_0
    iget-object v0, p0, Lio/netty/util/ReferenceCountUtil$ReleasingTask;->obj:Lio/netty/util/ReferenceCounted;

    iget v1, p0, Lio/netty/util/ReferenceCountUtil$ReleasingTask;->decrement:I

    invoke-interface {v0, v1}, Lio/netty/util/ReferenceCounted;->release(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    invoke-static {}, Lio/netty/util/ReferenceCountUtil;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    const-string v1, "Non-zero refCnt: {}"

    invoke-interface {v0, v1, p0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {}, Lio/netty/util/ReferenceCountUtil;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    const-string v1, "Released: {}"

    invoke-interface {v0, v1, p0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lio/netty/util/ReferenceCountUtil;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    iget-object v2, p0, Lio/netty/util/ReferenceCountUtil$ReleasingTask;->obj:Lio/netty/util/ReferenceCounted;

    const-string v3, "Failed to release an object: {}"

    invoke-interface {v1, v3, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/netty/util/ReferenceCountUtil$ReleasingTask;->obj:Lio/netty/util/ReferenceCounted;

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".release("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/util/ReferenceCountUtil$ReleasingTask;->decrement:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") refCnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/util/ReferenceCountUtil$ReleasingTask;->obj:Lio/netty/util/ReferenceCounted;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->refCnt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
