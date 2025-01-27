.class public Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;
.super Ljava/lang/Object;
.source "Candidate.java"


# instance fields
.field private aid:[B

.field private label:[B

.field private name:[B

.field private priorityIndicator:B


# direct methods
.method public constructor <init>([B[B[BB)V
    .locals 1
    .param p1, "aid"    # [B
    .param p2, "name"    # [B
    .param p3, "label"    # [B
    .param p4, "priorityIndicator"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "aid",
            "name",
            "label",
            "priorityIndicator"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;->aid:[B

    .line 49
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;->name:[B

    .line 50
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;->label:[B

    .line 51
    and-int/lit8 v0, p4, 0xf

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;->priorityIndicator:B

    .line 52
    return-void
.end method


# virtual methods
.method public getAid()[B
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;->aid:[B

    return-object v0
.end method

.method public getLabel()[B
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;->label:[B

    return-object v0
.end method

.method public getName()[B
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;->name:[B

    return-object v0
.end method

.method public getPriorityIndicator()B
    .locals 1

    .line 83
    iget-byte v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Candidate;->priorityIndicator:B

    return v0
.end method
