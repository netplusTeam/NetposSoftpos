.class public final synthetic Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/regex/Pattern;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/regex/Pattern;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda17;->f$0:Ljava/util/regex/Pattern;

    iput-boolean p2, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda17;->f$1:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda17;->f$0:Ljava/util/regex/Pattern;

    iget-boolean v1, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda17;->f$1:Z

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/jline/reader/impl/CompletionMatcherImpl;->lambda$defaultMatchers$8(Ljava/util/regex/Pattern;ZLjava/lang/String;)Z

    move-result p1

    return p1
.end method
