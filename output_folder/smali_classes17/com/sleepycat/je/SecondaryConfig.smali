.class public Lcom/sleepycat/je/SecondaryConfig;
.super Lcom/sleepycat/je/DatabaseConfig;
.source "SecondaryConfig.java"


# static fields
.field public static final DEFAULT:Lcom/sleepycat/je/SecondaryConfig;


# instance fields
.field private allowPopulate:Z

.field private extractFromPrimaryKeyOnly:Z

.field private foreignKeyDatabase:Lcom/sleepycat/je/Database;

.field private foreignKeyDeleteAction:Lcom/sleepycat/je/ForeignKeyDeleteAction;

.field private foreignKeyNullifier:Lcom/sleepycat/je/ForeignKeyNullifier;

.field private foreignMultiKeyNullifier:Lcom/sleepycat/je/ForeignMultiKeyNullifier;

.field private immutableSecondaryKey:Z

.field private keyCreator:Lcom/sleepycat/je/SecondaryKeyCreator;

.field private multiKeyCreator:Lcom/sleepycat/je/SecondaryMultiKeyCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/sleepycat/je/SecondaryConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/SecondaryConfig;-><init>()V

    sput-object v0, Lcom/sleepycat/je/SecondaryConfig;->DEFAULT:Lcom/sleepycat/je/SecondaryConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    .line 57
    sget-object v0, Lcom/sleepycat/je/ForeignKeyDeleteAction;->ABORT:Lcom/sleepycat/je/ForeignKeyDeleteAction;

    iput-object v0, p0, Lcom/sleepycat/je/SecondaryConfig;->foreignKeyDeleteAction:Lcom/sleepycat/je/ForeignKeyDeleteAction;

    .line 68
    return-void
.end method

.method private equalOrBothNull(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 605
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/sleepycat/je/DatabaseConfig;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/sleepycat/je/SecondaryConfig;->clone()Lcom/sleepycat/je/SecondaryConfig;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/sleepycat/je/SecondaryConfig;
    .locals 1

    .line 525
    invoke-super {p0}, Lcom/sleepycat/je/DatabaseConfig;->clone()Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/SecondaryConfig;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/sleepycat/je/SecondaryConfig;->clone()Lcom/sleepycat/je/SecondaryConfig;

    move-result-object v0

    return-object v0
.end method

.method genSecondaryConfigMismatchMessage(Lcom/sleepycat/je/DatabaseConfig;ZZZZZZZ)Ljava/lang/String;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/DatabaseConfig;
    .param p2, "kcMatch"    # Z
    .param p3, "mkcMatch"    # Z
    .param p4, "fkdMatch"    # Z
    .param p5, "fkdaMatch"    # Z
    .param p6, "fknMatch"    # Z
    .param p7, "fmknMatch"    # Z
    .param p8, "imskMatch"    # Z

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The following SecondaryConfig parameters for the\ncached Database do not match the parameters for the\nrequested Database:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 620
    .local v0, "ret":Ljava/lang/StringBuilder;
    if-nez p2, :cond_0

    .line 621
    const-string v1, " SecondaryKeyCreator\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    :cond_0
    if-nez p3, :cond_1

    .line 625
    const-string v1, " SecondaryMultiKeyCreator\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    :cond_1
    if-nez p4, :cond_2

    .line 629
    const-string v1, " ForeignKeyDelete\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    :cond_2
    if-nez p5, :cond_3

    .line 633
    const-string v1, " ForeignKeyDeleteAction\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    :cond_3
    if-nez p6, :cond_4

    .line 637
    const-string v1, " ForeignKeyNullifier\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    :cond_4
    if-nez p6, :cond_5

    .line 641
    const-string v1, " ForeignMultiKeyNullifier\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :cond_5
    if-nez p8, :cond_6

    .line 645
    const-string v1, " ImmutableSecondaryKey\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAllowPopulate()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/sleepycat/je/SecondaryConfig;->allowPopulate:Z

    return v0
.end method

.method public getExtractFromPrimaryKeyOnly()Z
    .locals 1

    .line 467
    iget-boolean v0, p0, Lcom/sleepycat/je/SecondaryConfig;->extractFromPrimaryKeyOnly:Z

    return v0
.end method

.method public getForeignKeyDatabase()Lcom/sleepycat/je/Database;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryConfig;->foreignKeyDatabase:Lcom/sleepycat/je/Database;

    return-object v0
.end method

.method public getForeignKeyDeleteAction()Lcom/sleepycat/je/ForeignKeyDeleteAction;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryConfig;->foreignKeyDeleteAction:Lcom/sleepycat/je/ForeignKeyDeleteAction;

    return-object v0
.end method

.method public getForeignKeyNullifier()Lcom/sleepycat/je/ForeignKeyNullifier;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryConfig;->foreignKeyNullifier:Lcom/sleepycat/je/ForeignKeyNullifier;

    return-object v0
.end method

.method public getForeignMultiKeyNullifier()Lcom/sleepycat/je/ForeignMultiKeyNullifier;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryConfig;->foreignMultiKeyNullifier:Lcom/sleepycat/je/ForeignMultiKeyNullifier;

    return-object v0
.end method

.method public getImmutableSecondaryKey()Z
    .locals 1

    .line 517
    iget-boolean v0, p0, Lcom/sleepycat/je/SecondaryConfig;->immutableSecondaryKey:Z

    return v0
.end method

.method public getKeyCreator()Lcom/sleepycat/je/SecondaryKeyCreator;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryConfig;->keyCreator:Lcom/sleepycat/je/SecondaryKeyCreator;

    return-object v0
.end method

.method public getMultiKeyCreator()Lcom/sleepycat/je/SecondaryMultiKeyCreator;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/sleepycat/je/SecondaryConfig;->multiKeyCreator:Lcom/sleepycat/je/SecondaryMultiKeyCreator;

    return-object v0
.end method

.method public setAllowPopulate(Z)Lcom/sleepycat/je/SecondaryConfig;
    .locals 0
    .param p1, "allowPopulate"    # Z

    .line 185
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/SecondaryConfig;->setAllowPopulateVoid(Z)V

    .line 186
    return-object p0
.end method

.method public setAllowPopulateVoid(Z)V
    .locals 0
    .param p1, "allowPopulate"    # Z

    .line 194
    iput-boolean p1, p0, Lcom/sleepycat/je/SecondaryConfig;->allowPopulate:Z

    .line 195
    return-void
.end method

.method public setExtractFromPrimaryKeyOnly(Z)Lcom/sleepycat/je/SecondaryConfig;
    .locals 0
    .param p1, "extractFromPrimaryKeyOnly"    # Z

    .line 440
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/SecondaryConfig;->setExtractFromPrimaryKeyOnlyVoid(Z)V

    .line 441
    return-object p0
.end method

.method public setExtractFromPrimaryKeyOnlyVoid(Z)V
    .locals 0
    .param p1, "extractFromPrimaryKeyOnly"    # Z

    .line 451
    iput-boolean p1, p0, Lcom/sleepycat/je/SecondaryConfig;->extractFromPrimaryKeyOnly:Z

    .line 452
    return-void
.end method

.method public setForeignKeyDatabase(Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/SecondaryConfig;
    .locals 0
    .param p1, "foreignKeyDatabase"    # Lcom/sleepycat/je/Database;

    .line 233
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/SecondaryConfig;->setForeignKeyDatabaseVoid(Lcom/sleepycat/je/Database;)V

    .line 234
    return-object p0
.end method

.method public setForeignKeyDatabaseVoid(Lcom/sleepycat/je/Database;)V
    .locals 0
    .param p1, "foreignKeyDatabase"    # Lcom/sleepycat/je/Database;

    .line 242
    iput-object p1, p0, Lcom/sleepycat/je/SecondaryConfig;->foreignKeyDatabase:Lcom/sleepycat/je/Database;

    .line 243
    return-void
.end method

.method public setForeignKeyDeleteAction(Lcom/sleepycat/je/ForeignKeyDeleteAction;)Lcom/sleepycat/je/SecondaryConfig;
    .locals 0
    .param p1, "foreignKeyDeleteAction"    # Lcom/sleepycat/je/ForeignKeyDeleteAction;

    .line 274
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/SecondaryConfig;->setForeignKeyDeleteActionVoid(Lcom/sleepycat/je/ForeignKeyDeleteAction;)V

    .line 275
    return-object p0
.end method

.method public setForeignKeyDeleteActionVoid(Lcom/sleepycat/je/ForeignKeyDeleteAction;)V
    .locals 1
    .param p1, "foreignKeyDeleteAction"    # Lcom/sleepycat/je/ForeignKeyDeleteAction;

    .line 285
    const-string v0, "foreignKeyDeleteAction"

    invoke-static {p1, v0}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iput-object p1, p0, Lcom/sleepycat/je/SecondaryConfig;->foreignKeyDeleteAction:Lcom/sleepycat/je/ForeignKeyDeleteAction;

    .line 288
    return-void
.end method

.method public setForeignKeyNullifier(Lcom/sleepycat/je/ForeignKeyNullifier;)Lcom/sleepycat/je/SecondaryConfig;
    .locals 0
    .param p1, "foreignKeyNullifier"    # Lcom/sleepycat/je/ForeignKeyNullifier;

    .line 332
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/SecondaryConfig;->setForeignKeyNullifierVoid(Lcom/sleepycat/je/ForeignKeyNullifier;)V

    .line 333
    return-object p0
.end method

.method public setForeignKeyNullifierVoid(Lcom/sleepycat/je/ForeignKeyNullifier;)V
    .locals 0
    .param p1, "foreignKeyNullifier"    # Lcom/sleepycat/je/ForeignKeyNullifier;

    .line 343
    iput-object p1, p0, Lcom/sleepycat/je/SecondaryConfig;->foreignKeyNullifier:Lcom/sleepycat/je/ForeignKeyNullifier;

    .line 344
    return-void
.end method

.method public setForeignMultiKeyNullifier(Lcom/sleepycat/je/ForeignMultiKeyNullifier;)Lcom/sleepycat/je/SecondaryConfig;
    .locals 0
    .param p1, "foreignMultiKeyNullifier"    # Lcom/sleepycat/je/ForeignMultiKeyNullifier;

    .line 384
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/SecondaryConfig;->setForeignMultiKeyNullifierVoid(Lcom/sleepycat/je/ForeignMultiKeyNullifier;)V

    .line 385
    return-object p0
.end method

.method public setForeignMultiKeyNullifierVoid(Lcom/sleepycat/je/ForeignMultiKeyNullifier;)V
    .locals 0
    .param p1, "foreignMultiKeyNullifier"    # Lcom/sleepycat/je/ForeignMultiKeyNullifier;

    .line 395
    iput-object p1, p0, Lcom/sleepycat/je/SecondaryConfig;->foreignMultiKeyNullifier:Lcom/sleepycat/je/ForeignMultiKeyNullifier;

    .line 396
    return-void
.end method

.method public setImmutableSecondaryKey(Z)Lcom/sleepycat/je/SecondaryConfig;
    .locals 0
    .param p1, "immutableSecondaryKey"    # Z

    .line 494
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/SecondaryConfig;->setImmutableSecondaryKeyVoid(Z)V

    .line 495
    return-object p0
.end method

.method public setImmutableSecondaryKeyVoid(Z)V
    .locals 0
    .param p1, "immutableSecondaryKey"    # Z

    .line 504
    iput-boolean p1, p0, Lcom/sleepycat/je/SecondaryConfig;->immutableSecondaryKey:Z

    .line 505
    return-void
.end method

.method public setKeyCreator(Lcom/sleepycat/je/SecondaryKeyCreator;)Lcom/sleepycat/je/SecondaryConfig;
    .locals 0
    .param p1, "keyCreator"    # Lcom/sleepycat/je/SecondaryKeyCreator;

    .line 93
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/SecondaryConfig;->setKeyCreatorVoid(Lcom/sleepycat/je/SecondaryKeyCreator;)V

    .line 94
    return-object p0
.end method

.method public setKeyCreatorVoid(Lcom/sleepycat/je/SecondaryKeyCreator;)V
    .locals 0
    .param p1, "keyCreator"    # Lcom/sleepycat/je/SecondaryKeyCreator;

    .line 102
    iput-object p1, p0, Lcom/sleepycat/je/SecondaryConfig;->keyCreator:Lcom/sleepycat/je/SecondaryKeyCreator;

    .line 103
    return-void
.end method

.method public setMultiKeyCreator(Lcom/sleepycat/je/SecondaryMultiKeyCreator;)Lcom/sleepycat/je/SecondaryConfig;
    .locals 0
    .param p1, "multiKeyCreator"    # Lcom/sleepycat/je/SecondaryMultiKeyCreator;

    .line 140
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/SecondaryConfig;->setMultiKeyCreatorVoid(Lcom/sleepycat/je/SecondaryMultiKeyCreator;)V

    .line 141
    return-object p0
.end method

.method public setMultiKeyCreatorVoid(Lcom/sleepycat/je/SecondaryMultiKeyCreator;)V
    .locals 0
    .param p1, "multiKeyCreator"    # Lcom/sleepycat/je/SecondaryMultiKeyCreator;

    .line 151
    iput-object p1, p0, Lcom/sleepycat/je/SecondaryConfig;->multiKeyCreator:Lcom/sleepycat/je/SecondaryMultiKeyCreator;

    .line 152
    return-void
.end method

.method public setOverrideTriggers(Z)Lcom/sleepycat/je/DatabaseConfig;
    .locals 2
    .param p1, "override"    # Z

    .line 600
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Triggers may only be associated with a Primary database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTriggers(Ljava/util/List;)Lcom/sleepycat/je/DatabaseConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/trigger/Trigger;",
            ">;)",
            "Lcom/sleepycat/je/DatabaseConfig;"
        }
    .end annotation

    .line 585
    .local p1, "triggers":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/trigger/Trigger;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 589
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Triggers may only be associated with a Primary database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_1
    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyCreator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/SecondaryConfig;->keyCreator:Lcom/sleepycat/je/SecondaryKeyCreator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmultiKeyCreator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/SecondaryConfig;->multiKeyCreator:Lcom/sleepycat/je/SecondaryMultiKeyCreator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nallowPopulate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/SecondaryConfig;->allowPopulate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nforeignKeyDatabase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/SecondaryConfig;->foreignKeyDatabase:Lcom/sleepycat/je/Database;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nforeignKeyDeleteAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/SecondaryConfig;->foreignKeyDeleteAction:Lcom/sleepycat/je/ForeignKeyDeleteAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nforeignKeyNullifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/SecondaryConfig;->foreignKeyNullifier:Lcom/sleepycat/je/ForeignKeyNullifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nforeignMultiKeyNullifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/SecondaryConfig;->foreignMultiKeyNullifier:Lcom/sleepycat/je/ForeignMultiKeyNullifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nimmutableSecondaryKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/SecondaryConfig;->immutableSecondaryKey:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method validate(Lcom/sleepycat/je/DatabaseConfig;)V
    .locals 19
    .param p1, "configArg"    # Lcom/sleepycat/je/DatabaseConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 537
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-super/range {p0 .. p1}, Lcom/sleepycat/je/DatabaseConfig;->validate(Lcom/sleepycat/je/DatabaseConfig;)V

    .line 539
    if-eqz v10, :cond_4

    instance-of v0, v10, Lcom/sleepycat/je/SecondaryConfig;

    if-eqz v0, :cond_4

    .line 545
    move-object v11, v10

    check-cast v11, Lcom/sleepycat/je/SecondaryConfig;

    .line 547
    .local v11, "config":Lcom/sleepycat/je/SecondaryConfig;
    nop

    .line 548
    invoke-virtual {v11}, Lcom/sleepycat/je/SecondaryConfig;->getKeyCreator()Lcom/sleepycat/je/SecondaryKeyCreator;

    move-result-object v0

    iget-object v1, v9, Lcom/sleepycat/je/SecondaryConfig;->keyCreator:Lcom/sleepycat/je/SecondaryKeyCreator;

    invoke-direct {v9, v0, v1}, Lcom/sleepycat/je/SecondaryConfig;->equalOrBothNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 549
    .local v12, "kcMatch":Z
    nop

    .line 550
    invoke-virtual {v11}, Lcom/sleepycat/je/SecondaryConfig;->getMultiKeyCreator()Lcom/sleepycat/je/SecondaryMultiKeyCreator;

    move-result-object v0

    iget-object v1, v9, Lcom/sleepycat/je/SecondaryConfig;->multiKeyCreator:Lcom/sleepycat/je/SecondaryMultiKeyCreator;

    invoke-direct {v9, v0, v1}, Lcom/sleepycat/je/SecondaryConfig;->equalOrBothNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    .line 551
    .local v13, "mkcMatch":Z
    nop

    .line 552
    invoke-virtual {v11}, Lcom/sleepycat/je/SecondaryConfig;->getForeignKeyDatabase()Lcom/sleepycat/je/Database;

    move-result-object v0

    iget-object v1, v9, Lcom/sleepycat/je/SecondaryConfig;->foreignKeyDatabase:Lcom/sleepycat/je/Database;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    move v14, v0

    .line 553
    .local v14, "fkdMatch":Z
    nop

    .line 554
    invoke-virtual {v11}, Lcom/sleepycat/je/SecondaryConfig;->getForeignKeyDeleteAction()Lcom/sleepycat/je/ForeignKeyDeleteAction;

    move-result-object v0

    iget-object v1, v9, Lcom/sleepycat/je/SecondaryConfig;->foreignKeyDeleteAction:Lcom/sleepycat/je/ForeignKeyDeleteAction;

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    move v15, v0

    .line 555
    .local v15, "fkdaMatch":Z
    nop

    .line 556
    invoke-virtual {v11}, Lcom/sleepycat/je/SecondaryConfig;->getForeignKeyNullifier()Lcom/sleepycat/je/ForeignKeyNullifier;

    move-result-object v0

    iget-object v1, v9, Lcom/sleepycat/je/SecondaryConfig;->foreignKeyNullifier:Lcom/sleepycat/je/ForeignKeyNullifier;

    invoke-direct {v9, v0, v1}, Lcom/sleepycat/je/SecondaryConfig;->equalOrBothNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    .line 557
    .local v16, "fknMatch":Z
    nop

    .line 558
    invoke-virtual {v11}, Lcom/sleepycat/je/SecondaryConfig;->getForeignMultiKeyNullifier()Lcom/sleepycat/je/ForeignMultiKeyNullifier;

    move-result-object v0

    iget-object v1, v9, Lcom/sleepycat/je/SecondaryConfig;->foreignMultiKeyNullifier:Lcom/sleepycat/je/ForeignMultiKeyNullifier;

    invoke-direct {v9, v0, v1}, Lcom/sleepycat/je/SecondaryConfig;->equalOrBothNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    .line 559
    .local v17, "fmknMatch":Z
    nop

    .line 560
    invoke-virtual {v11}, Lcom/sleepycat/je/SecondaryConfig;->getImmutableSecondaryKey()Z

    move-result v0

    iget-boolean v1, v9, Lcom/sleepycat/je/SecondaryConfig;->immutableSecondaryKey:Z

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    move/from16 v18, v2

    .line 561
    .local v18, "imskMatch":Z
    if-eqz v12, :cond_3

    if-eqz v13, :cond_3

    if-eqz v14, :cond_3

    if-eqz v15, :cond_3

    if-eqz v16, :cond_3

    if-eqz v17, :cond_3

    if-eqz v18, :cond_3

    .line 568
    return-void

    .line 571
    :cond_3
    nop

    .line 572
    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v18

    invoke-virtual/range {v0 .. v8}, Lcom/sleepycat/je/SecondaryConfig;->genSecondaryConfigMismatchMessage(Lcom/sleepycat/je/DatabaseConfig;ZZZZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 541
    .end local v0    # "message":Ljava/lang/String;
    .end local v11    # "config":Lcom/sleepycat/je/SecondaryConfig;
    .end local v12    # "kcMatch":Z
    .end local v13    # "mkcMatch":Z
    .end local v14    # "fkdMatch":Z
    .end local v15    # "fkdaMatch":Z
    .end local v16    # "fknMatch":Z
    .end local v17    # "fmknMatch":Z
    .end local v18    # "imskMatch":Z
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The SecondaryConfig argument is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
