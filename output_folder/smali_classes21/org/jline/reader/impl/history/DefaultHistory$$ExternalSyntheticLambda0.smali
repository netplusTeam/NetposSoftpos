.class public final synthetic Lorg/jline/reader/impl/history/DefaultHistory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/jline/reader/impl/history/DefaultHistory;

.field public final synthetic f$1:Ljava/nio/file/Path;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/jline/reader/impl/history/DefaultHistory;Ljava/nio/file/Path;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/history/DefaultHistory$$ExternalSyntheticLambda0;->f$0:Lorg/jline/reader/impl/history/DefaultHistory;

    iput-object p2, p0, Lorg/jline/reader/impl/history/DefaultHistory$$ExternalSyntheticLambda0;->f$1:Ljava/nio/file/Path;

    iput-boolean p3, p0, Lorg/jline/reader/impl/history/DefaultHistory$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/jline/reader/impl/history/DefaultHistory$$ExternalSyntheticLambda0;->f$0:Lorg/jline/reader/impl/history/DefaultHistory;

    iget-object v1, p0, Lorg/jline/reader/impl/history/DefaultHistory$$ExternalSyntheticLambda0;->f$1:Ljava/nio/file/Path;

    iget-boolean v2, p0, Lorg/jline/reader/impl/history/DefaultHistory$$ExternalSyntheticLambda0;->f$2:Z

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lorg/jline/reader/impl/history/DefaultHistory;->lambda$read$1$org-jline-reader-impl-history-DefaultHistory(Ljava/nio/file/Path;ZLjava/lang/String;)V

    return-void
.end method
