.class public Lorg/jline/utils/DiffHelper$Diff;
.super Ljava/lang/Object;
.source "DiffHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/utils/DiffHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Diff"
.end annotation


# instance fields
.field public final operation:Lorg/jline/utils/DiffHelper$Operation;

.field public final text:Lorg/jline/utils/AttributedString;


# direct methods
.method public constructor <init>(Lorg/jline/utils/DiffHelper$Operation;Lorg/jline/utils/AttributedString;)V
    .locals 0
    .param p1, "operation"    # Lorg/jline/utils/DiffHelper$Operation;
    .param p2, "text"    # Lorg/jline/utils/AttributedString;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/jline/utils/DiffHelper$Diff;->operation:Lorg/jline/utils/DiffHelper$Operation;

    .line 52
    iput-object p2, p0, Lorg/jline/utils/DiffHelper$Diff;->text:Lorg/jline/utils/AttributedString;

    .line 53
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Diff("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/utils/DiffHelper$Diff;->operation:Lorg/jline/utils/DiffHelper$Operation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/utils/DiffHelper$Diff;->text:Lorg/jline/utils/AttributedString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
