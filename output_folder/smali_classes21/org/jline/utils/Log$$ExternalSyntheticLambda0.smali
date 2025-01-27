.class public final synthetic Lorg/jline/utils/Log$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/util/logging/Level;

.field public final synthetic f$1:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/utils/Log$$ExternalSyntheticLambda0;->f$0:Ljava/util/logging/Level;

    iput-object p2, p0, Lorg/jline/utils/Log$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/jline/utils/Log$$ExternalSyntheticLambda0;->f$0:Ljava/util/logging/Level;

    iget-object v1, p0, Lorg/jline/utils/Log$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Supplier;

    invoke-static {v0, v1}, Lorg/jline/utils/Log;->lambda$log$0(Ljava/util/logging/Level;Ljava/util/function/Supplier;)Ljava/util/logging/LogRecord;

    move-result-object v0

    return-object v0
.end method
