.class public final synthetic Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/jline/console/impl/DefaultPrinter;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/console/impl/DefaultPrinter;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda2;->f$0:Lorg/jline/console/impl/DefaultPrinter;

    iput-object p2, p0, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iput-object p3, p0, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda2;->f$0:Lorg/jline/console/impl/DefaultPrinter;

    iget-object v1, p0, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iget-object v2, p0, Lorg/jline/console/impl/DefaultPrinter$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lorg/jline/console/impl/DefaultPrinter;->lambda$highlightAndPrint$0$org-jline-console-impl-DefaultPrinter(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
