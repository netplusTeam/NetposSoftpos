.class public final synthetic Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda22;->f$0:Z

    iput-object p2, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda22;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-boolean v0, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda22;->f$0:Z

    iget-object v1, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda22;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/jline/reader/impl/CompletionMatcherImpl;->lambda$defaultMatchers$13(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
