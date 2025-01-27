.class public final synthetic Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda3;->f$1:Z

    iput p3, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda3;->f$1:Z

    iget v2, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda3;->f$2:I

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, v1, v2, p1}, Lorg/jline/reader/impl/CompletionMatcherImpl;->lambda$typoMatcher$16(Ljava/lang/String;ZILjava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
