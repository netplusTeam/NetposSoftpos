.class public final synthetic Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda11;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda11;->f$1:Z

    iput p3, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda11;->f$2:I

    iput-object p4, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda11;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda11;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda11;->f$1:Z

    iget v2, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda11;->f$2:I

    iget-object v3, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda11;->f$3:Ljava/lang/String;

    check-cast p1, Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/jline/reader/impl/CompletionMatcherImpl;->lambda$typoMatcher$18(Ljava/lang/String;ZILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
