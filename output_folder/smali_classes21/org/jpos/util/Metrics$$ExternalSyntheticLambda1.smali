.class public final synthetic Lorg/jpos/util/Metrics$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/jpos/util/Metrics;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/jpos/util/Metrics;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jpos/util/Metrics$$ExternalSyntheticLambda1;->f$0:Lorg/jpos/util/Metrics;

    iput-object p2, p0, Lorg/jpos/util/Metrics$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    iput-object p3, p0, Lorg/jpos/util/Metrics$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/jpos/util/Metrics$$ExternalSyntheticLambda1;->f$0:Lorg/jpos/util/Metrics;

    iget-object v1, p0, Lorg/jpos/util/Metrics$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    iget-object v2, p0, Lorg/jpos/util/Metrics$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, v1, v2, p1}, Lorg/jpos/util/Metrics;->lambda$dumpHistograms$4$org-jpos-util-Metrics(Ljava/io/File;Ljava/lang/String;Ljava/util/Map$Entry;)V

    return-void
.end method
