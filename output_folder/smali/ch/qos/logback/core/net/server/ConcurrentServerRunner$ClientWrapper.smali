.class Lch/qos/logback/core/net/server/ConcurrentServerRunner$ClientWrapper;
.super Ljava/lang/Object;
.source "ConcurrentServerRunner.java"

# interfaces
.implements Lch/qos/logback/core/net/server/Client;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/qos/logback/core/net/server/ConcurrentServerRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientWrapper"
.end annotation


# instance fields
.field private final delegate:Lch/qos/logback/core/net/server/Client;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lch/qos/logback/core/net/server/ConcurrentServerRunner;


# direct methods
.method public constructor <init>(Lch/qos/logback/core/net/server/ConcurrentServerRunner;Lch/qos/logback/core/net/server/Client;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 202
    .local p0, "this":Lch/qos/logback/core/net/server/ConcurrentServerRunner$ClientWrapper;, "Lch/qos/logback/core/net/server/ConcurrentServerRunner<TT;>.ClientWrapper;"
    .local p2, "client":Lch/qos/logback/core/net/server/Client;, "TT;"
    iput-object p1, p0, Lch/qos/logback/core/net/server/ConcurrentServerRunner$ClientWrapper;->this$0:Lch/qos/logback/core/net/server/ConcurrentServerRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p2, p0, Lch/qos/logback/core/net/server/ConcurrentServerRunner$ClientWrapper;->delegate:Lch/qos/logback/core/net/server/Client;

    .line 204
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 216
    .local p0, "this":Lch/qos/logback/core/net/server/ConcurrentServerRunner$ClientWrapper;, "Lch/qos/logback/core/net/server/ConcurrentServerRunner<TT;>.ClientWrapper;"
    iget-object v0, p0, Lch/qos/logback/core/net/server/ConcurrentServerRunner$ClientWrapper;->delegate:Lch/qos/logback/core/net/server/Client;

    invoke-interface {v0}, Lch/qos/logback/core/net/server/Client;->close()V

    .line 217
    return-void
.end method

.method public run()V
    .locals 3

    .line 207
    .local p0, "this":Lch/qos/logback/core/net/server/ConcurrentServerRunner$ClientWrapper;, "Lch/qos/logback/core/net/server/ConcurrentServerRunner<TT;>.ClientWrapper;"
    iget-object v0, p0, Lch/qos/logback/core/net/server/ConcurrentServerRunner$ClientWrapper;->this$0:Lch/qos/logback/core/net/server/ConcurrentServerRunner;

    iget-object v1, p0, Lch/qos/logback/core/net/server/ConcurrentServerRunner$ClientWrapper;->delegate:Lch/qos/logback/core/net/server/Client;

    invoke-static {v0, v1}, Lch/qos/logback/core/net/server/ConcurrentServerRunner;->access$000(Lch/qos/logback/core/net/server/ConcurrentServerRunner;Lch/qos/logback/core/net/server/Client;)V

    .line 209
    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/net/server/ConcurrentServerRunner$ClientWrapper;->delegate:Lch/qos/logback/core/net/server/Client;

    invoke-interface {v0}, Lch/qos/logback/core/net/server/Client;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v0, p0, Lch/qos/logback/core/net/server/ConcurrentServerRunner$ClientWrapper;->this$0:Lch/qos/logback/core/net/server/ConcurrentServerRunner;

    iget-object v1, p0, Lch/qos/logback/core/net/server/ConcurrentServerRunner$ClientWrapper;->delegate:Lch/qos/logback/core/net/server/Client;

    invoke-static {v0, v1}, Lch/qos/logback/core/net/server/ConcurrentServerRunner;->access$100(Lch/qos/logback/core/net/server/ConcurrentServerRunner;Lch/qos/logback/core/net/server/Client;)V

    .line 212
    nop

    .line 213
    return-void

    .line 211
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/qos/logback/core/net/server/ConcurrentServerRunner$ClientWrapper;->this$0:Lch/qos/logback/core/net/server/ConcurrentServerRunner;

    iget-object v2, p0, Lch/qos/logback/core/net/server/ConcurrentServerRunner$ClientWrapper;->delegate:Lch/qos/logback/core/net/server/Client;

    invoke-static {v1, v2}, Lch/qos/logback/core/net/server/ConcurrentServerRunner;->access$100(Lch/qos/logback/core/net/server/ConcurrentServerRunner;Lch/qos/logback/core/net/server/Client;)V

    throw v0
.end method
