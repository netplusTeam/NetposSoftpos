.class public final synthetic Lorg/jline/reader/impl/DefaultParser$ArgumentList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/jline/reader/impl/DefaultParser$ArgumentList;

.field public final synthetic f$1:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/reader/impl/DefaultParser$ArgumentList;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList$$ExternalSyntheticLambda0;->f$0:Lorg/jline/reader/impl/DefaultParser$ArgumentList;

    iput-object p2, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList$$ExternalSyntheticLambda0;->f$1:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList$$ExternalSyntheticLambda0;->f$0:Lorg/jline/reader/impl/DefaultParser$ArgumentList;

    iget-object v1, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList$$ExternalSyntheticLambda0;->f$1:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->lambda$escape$0$org-jline-reader-impl-DefaultParser$ArgumentList(Ljava/lang/StringBuilder;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
