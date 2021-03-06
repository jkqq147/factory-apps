.class public Lcom/google/glass/voice/SendMessageTimelineCreatorJob;
.super Lcom/google/glass/timeline/TimelineItemCreatorJob;
.source "SendMessageTimelineCreatorJob.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private finalPicturePath:Ljava/lang/String;

.field private final isReplyingAll:Z

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private message:Ljava/lang/String;

.field private final messageType:I

.field private messagingPersona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

.field private final replyToId:Ljava/lang/String;

.field private selfEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field private sourceItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private targetEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field private thumbnail:Landroid/graphics/Bitmap;

.field private final timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

.field private final timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

.field private final toId:Ljava/lang/String;

.field private final toName:Ljava/lang/String;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/glass/timeline/TimelineItemCreationHelper;Lcom/google/glass/timeline/TimelineItemLocationHelper;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageType"    # I
    .param p3, "toId"    # Ljava/lang/String;
    .param p4, "toName"    # Ljava/lang/String;
    .param p5, "replyToId"    # Ljava/lang/String;
    .param p6, "isReplyingAll"    # Z
    .param p7, "timelineItemCreationHelper"    # Lcom/google/glass/timeline/TimelineItemCreationHelper;
    .param p8, "timelineItemLocationHelper"    # Lcom/google/glass/timeline/TimelineItemLocationHelper;
    .param p9, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 96
    sget-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->VOICE_MESSAGE:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/timeline/TimelineItemCreatorJob;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;I)V

    .line 56
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 99
    iput-object p1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->context:Landroid/content/Context;

    .line 100
    iput-object p9, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 101
    iput-object p7, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    .line 102
    iput-object p8, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    .line 103
    iput p2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->messageType:I

    .line 104
    iput-object p3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->toId:Ljava/lang/String;

    .line 105
    iput-object p4, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->toName:Ljava/lang/String;

    .line 106
    iput-object p5, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->replyToId:Ljava/lang/String;

    .line 107
    iput-boolean p6, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->isReplyingAll:Z

    .line 108
    return-void
.end method

.method private getTargetEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 5

    .prologue
    .line 168
    iget-object v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->toId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    const/4 v1, 0x0

    .line 179
    :goto_0
    return-object v1

    .line 171
    :cond_0
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    .line 173
    .local v0, "entityHelper":Lcom/google/glass/entity/EntityHelper;
    iget v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->messageType:I

    packed-switch v1, :pswitch_data_0

    .line 181
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget v2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->messageType:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x21

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unknown message type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :pswitch_0
    iget-object v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->toId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/entity/EntityHelper;->getEntityByGuid(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->toId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForEmail(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    goto :goto_0

    .line 179
    :pswitch_2
    iget-object v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->toId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private populateForGlassware(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 7
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 450
    iget-object v2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->targetEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v2, :cond_1

    .line 451
    iget-object v2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to send message as entity not found [entityGuid=%s]."

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->toId:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    invoke-virtual {p0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->cancel()V

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->selfEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v2, :cond_2

    .line 458
    iget-object v2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->selfEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v2}, Lcom/google/glass/entity/EntityUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCreator(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 461
    :cond_2
    iget-object v2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->targetEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->messagingPersona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 462
    invoke-static {p1, v2, v3}, Lcom/google/glass/timeline/TimelineItemUtils;->modifyTimelineItemToSendToContact(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;)Z

    move-result v1

    .line 463
    .local v1, "sendable":Z
    if-eqz v1, :cond_3

    .line 464
    iget-object v2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->messagingPersona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-eqz v2, :cond_0

    .line 467
    iget-object v2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->messagingPersona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 468
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->messagingPersona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 469
    .local v0, "glasswareSourceIdPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->targetEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->updateLastUsedMessagingInEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/lang/String;Landroid/util/Pair;)V

    goto :goto_0

    .line 475
    .end local v0    # "glasswareSourceIdPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to send message as entity does not have valid configuration [entityGuid=%s]."

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->toId:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    invoke-virtual {p0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->cancel()V

    goto :goto_0
.end method

.method private populateForGmail(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 6
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 309
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Sending new message via Gmail..."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->targetEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v3, :cond_2

    .line 312
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->targetEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v3}, Lcom/google/glass/entity/EntityUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    .line 316
    .local v2, "modifiedTarget":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :goto_0
    sget-object v3, Lcom/google/glass/entity/EntityUtils;->GMAIL_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 317
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->messagingPersona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-eqz v3, :cond_3

    .line 318
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->messagingPersona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 323
    :goto_1
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->toName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 324
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->toName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 327
    :cond_0
    sget-object v3, Lcom/google/glass/entity/EntityUtils;->GMAIL_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 328
    invoke-static {p1, v2}, Lcom/google/glass/timeline/TimelineItemUtils;->addShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 331
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->selfEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v3, :cond_1

    .line 333
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->selfEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v3}, Lcom/google/glass/entity/EntityUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 334
    .local v0, "entityBuilder":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    sget-object v3, Lcom/google/glass/entity/EntityUtils;->GMAIL_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 335
    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCreator(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 340
    .end local v0    # "entityBuilder":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    sget-object v3, Lcom/google/glass/entity/EntityUtils;->GMAIL_GLASSWARE_SOURCE:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->toId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 341
    .local v1, "glasswareSourceIdPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->targetEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v1}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->updateLastUsedMessagingInEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/lang/String;Landroid/util/Pair;)V

    .line 342
    return-void

    .line 314
    .end local v1    # "glasswareSourceIdPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "modifiedTarget":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_2
    new-instance v2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    .restart local v2    # "modifiedTarget":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    goto :goto_0

    .line 320
    :cond_3
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->toId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    goto :goto_1
.end method

.method private sendToCompanion()Z
    .locals 2

    .prologue
    .line 530
    iget v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->messageType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->toId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->sourceItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->sourceItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 531
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemUtils;->shouldReplyViaCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private waitForPictureToBeSaved()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 272
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 274
    .local v7, "startTime":J
    new-instance v4, Ljava/io/File;

    iget-object v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->finalPicturePath:Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .local v4, "pictureFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Final picture already saved."

    new-array v3, v11, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 282
    .local v5, "parentFile":Ljava/io/File;
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 283
    .local v6, "savePictureLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob$1;

    .line 284
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x88

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob$1;-><init>(Lcom/google/glass/voice/SendMessageTimelineCreatorJob;Ljava/lang/String;ILjava/io/File;Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V

    .line 294
    .local v0, "fileObserver":Landroid/os/FileObserver;
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 295
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 297
    const-wide/16 v1, 0xa

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 298
    :catch_0
    move-exception v1

    goto :goto_1

    .line 303
    :cond_1
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 304
    iget-object v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Final picture saved after %d ms."

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v11

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected createFinalTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 5
    .param p1, "temporaryItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v4, 0x0

    .line 250
    iget-object v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Updating sync flags to send message"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 253
    .local v0, "finalItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->waitForPictureToBeSaved()V

    .line 257
    iget-object v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->finalPicturePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 258
    iget-object v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    invoke-virtual {v2}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->getLocalTimelineItemSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 260
    iget-object v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->SEND_MESSAGE_INCLUDES_PHOTO:Lcom/google/glass/userevent/UserEventAction;

    .line 261
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemUtils;->getRedactedSource(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 264
    :cond_0
    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 265
    invoke-direct {p0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->sendToCompanion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCompanionSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 268
    :cond_1
    return-object v0
.end method

.method protected createTemporaryItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 187
    invoke-virtual {p0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->hasMessageOrPicture()Z

    move-result v6

    invoke-static {v6}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 188
    iget-object v6, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    invoke-virtual {v6}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 189
    .local v1, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v6, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    invoke-virtual {v6, v1}, Lcom/google/glass/timeline/TimelineItemLocationHelper;->populateLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 190
    iget-object v6, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->message:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 191
    iget-object v6, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->message:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 195
    :cond_0
    invoke-virtual {v1, v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setViewType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 196
    invoke-static {v1, v12}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 198
    iget-object v6, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    .line 200
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "pictureFileName":Ljava/lang/String;
    new-instance v6, Lcom/google/glass/camera/CameraUtils;

    invoke-direct {v6}, Lcom/google/glass/camera/CameraUtils;-><init>()V

    .line 202
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->thumbnail:Landroid/graphics/Bitmap;

    .line 201
    invoke-virtual {v6, v7, v8, v4}, Lcom/google/glass/camera/CameraUtils;->saveThumbnailToCachedFiles(Lcom/google/glass/util/CachedFilesManager;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "path":Ljava/lang/String;
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    .line 206
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 207
    const-string v6, "image/jpeg"

    invoke-virtual {v0, v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 208
    invoke-static {v1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    .line 211
    .end local v0    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "pictureFileName":Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->messageType:I

    .line 212
    .local v2, "messageType":I
    iget-object v6, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->messagingPersona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-eqz v6, :cond_2

    .line 213
    sget-object v6, Lcom/google/glass/entity/EntityUtils;->GMAIL_GLASSWARE_SOURCE:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->messagingPersona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 214
    const/4 v2, 0x1

    .line 220
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->toId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 221
    if-ne v2, v12, :cond_5

    .line 222
    invoke-direct {p0, v1}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->populateForGlassware(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 243
    :cond_3
    :goto_1
    invoke-virtual {v1, v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 244
    invoke-virtual {v1, v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCompanionSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 245
    .end local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :goto_2
    return-object v1

    .line 215
    .restart local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_4
    iget-object v6, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->messagingPersona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->hasPhoneNumberPersona()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 216
    const/4 v2, 0x2

    goto :goto_0

    .line 223
    :cond_5
    if-ne v2, v9, :cond_6

    .line 224
    invoke-direct {p0, v1}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->populateForGmail(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_1

    .line 225
    :cond_6
    if-ne v2, v10, :cond_3

    .line 226
    invoke-virtual {p0, v1}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->populateForSms(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_1

    .line 228
    :cond_7
    iget-object v6, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->replyToId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 229
    iget-object v6, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->sourceItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v6, :cond_8

    .line 230
    iget-object v6, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "No timeline item found for %s"

    new-array v8, v9, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->replyToId:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v5

    .line 231
    goto :goto_2

    .line 234
    :cond_8
    iget-object v5, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->sourceItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v5}, Lcom/google/glass/timeline/TimelineItemUtils;->shouldReplyViaCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 235
    invoke-virtual {p0, v1}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->populateForCompanionAppReply(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_1

    .line 237
    :cond_9
    iget-object v5, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->selfEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v6, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->sourceItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-boolean v7, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->isReplyingAll:Z

    invoke-static {v5, v6, v1, v7}, Lcom/google/glass/sync/SharingUtils;->populateForCloud(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)V

    goto :goto_1

    .line 240
    :cond_a
    iget-object v6, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "toId and replyToId were both null, not creating timeline item for message"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v5

    .line 241
    goto :goto_2
.end method

.method public hasMessageOrPicture()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinalItemCreated(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 6
    .param p1, "completeItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 536
    iget-object v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Final message created"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    iget-object v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->toId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 539
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->SEND_MESSAGE_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

    .line 546
    .local v0, "userEventAction":Lcom/google/glass/userevent/UserEventAction;
    :goto_0
    invoke-direct {p0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->sendToCompanion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 548
    invoke-static {v1, p1}, Lcom/google/glass/companion/CompanionTimelineUtils;->sendTimelineItem(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 551
    iget-object v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to send to companion"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-static {v1, v2, v3, v4}, Lcom/google/glass/companion/CompanionTimelineUtils;->updateCompanionSyncStatus(Ljava/lang/String;ILcom/google/glass/timeline/TimelineItemDatabaseHelper;Z)V

    .line 559
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->targetEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v1, :cond_1

    .line 561
    iget-object v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->targetEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->updateContentUsageInEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 562
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->targetEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/entity/EntityHelper;->updateEntityUsage(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)I

    .line 565
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->sourceItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v1, :cond_2

    .line 567
    new-instance v1, Lcom/google/glass/entity/EntityUsageHelper;

    iget-object v2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/glass/entity/EntityUsageHelper;-><init>(Landroid/content/Context;)V

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->sourceItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/google/glass/entity/EntityUsageHelper;->updateEntityUsageFromItems(Ljava/util/List;Z)V

    .line 570
    :cond_2
    iget-object v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getRedactedSource(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 571
    return-void

    .line 540
    .end local v0    # "userEventAction":Lcom/google/glass/userevent/UserEventAction;
    :cond_3
    iget-boolean v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->isReplyingAll:Z

    if-eqz v1, :cond_4

    .line 541
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->REPLY_ALL_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

    .restart local v0    # "userEventAction":Lcom/google/glass/userevent/UserEventAction;
    goto :goto_0

    .line 543
    .end local v0    # "userEventAction":Lcom/google/glass/userevent/UserEventAction;
    :cond_4
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->REPLY_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

    .restart local v0    # "userEventAction":Lcom/google/glass/userevent/UserEventAction;
    goto :goto_0

    .line 555
    :cond_5
    iget-object v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Sent to companion"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->getTargetEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->targetEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 145
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/entity/EntityHelper;->getSelfEntity(Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->selfEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 148
    iget-object v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->replyToId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->replyToId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->sourceItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->replyToId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    iget-boolean v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->isReplyingAll:Z

    if-eqz v0, :cond_1

    .line 155
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->setUserActionType(I)V

    .line 162
    :goto_0
    return-void

    .line 157
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->setUserActionType(I)V

    goto :goto_0

    .line 160
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->setUserActionType(I)V

    goto :goto_0
.end method

.method populateForCompanionAppReply(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 8
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 347
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Replying to timeline item via companion..."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->sourceItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 350
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Don\'t have creator specified, can\'t reply."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    invoke-virtual {p0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->cancel()V

    .line 392
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->sourceItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    .line 356
    .local v2, "replyToEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->sourceItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v3}, Lcom/google/glass/timeline/TimelineItemUtils;->isCompanionReceivedSms(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    .line 357
    .local v1, "isCompanionReceivedSms":Z
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->sourceItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setInReplyTo(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 358
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->sourceItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSourceType()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSourceType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 359
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 360
    const/4 v3, 0x2

    invoke-static {p1, v3}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 361
    const/4 v3, 0x5

    invoke-static {p1, v3}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 362
    const/16 v3, 0x8

    invoke-static {p1, v3}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 363
    invoke-static {p1, v7}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 364
    invoke-virtual {p1, v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCompanionSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 366
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/glass/companion/CompanionTimelineUtils;->getSmsCreator(Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCreator(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 369
    if-eqz v1, :cond_1

    .line 370
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Replying to companion received SMS..."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    invoke-static {p1, v2}, Lcom/google/glass/timeline/TimelineItemUtils;->addShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 383
    :goto_1
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->context:Landroid/content/Context;

    iget-object v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v4, v4, v6

    .line 384
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/glass/companion/CompanionTimelineUtils;->getSmsBundleId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "bundleId":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 389
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setAttributionType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 391
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v3}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "set the bundle id to "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v7, v4, v3}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 373
    .end local v0    # "bundleId":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Replying to SMS created by Glass.."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->sourceItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v3, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v3}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 375
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "The shared target should be specified for the SMS reply!"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    invoke-virtual {p0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->cancel()V

    goto/16 :goto_0

    .line 380
    :cond_2
    iget-object v3, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->sourceItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v3, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v3, v3, v6

    invoke-static {p1, v3}, Lcom/google/glass/timeline/TimelineItemUtils;->addShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    goto :goto_1

    .line 391
    .restart local v0    # "bundleId":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method populateForSms(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 13
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 397
    iget-object v4, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Replying to phone number..."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    const/4 v5, 0x6

    iget-object v4, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v4}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Phone number: "

    iget-object v4, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->toId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {v5, v6, v4}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v3, "companion:com.google.glass.companion.sms"

    .line 406
    .local v3, "smsCompanionwareId":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->targetEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v4, :cond_1

    .line 407
    iget-object v4, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->targetEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v4}, Lcom/google/glass/entity/EntityUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 413
    .local v1, "modifiedTarget":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :goto_1
    iget-object v4, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->messagingPersona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->messagingPersona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->hasPhoneNumberPersona()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 415
    iget-object v4, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->messagingPersona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPhoneNumberPersona()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "phoneNumber":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->toId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 420
    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 421
    invoke-virtual {v1, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 423
    iget-object v4, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->context:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/google/glass/companion/CompanionTimelineUtils;->getSmsBundleId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "bundleId":Ljava/lang/String;
    invoke-virtual {p1, v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSourceType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 425
    iput-object v12, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 426
    invoke-static {p1, v10}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 427
    const/4 v4, 0x5

    invoke-static {p1, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 428
    const/16 v4, 0x8

    invoke-static {p1, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 429
    invoke-static {p1, v11}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 430
    invoke-static {p1, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->addShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 431
    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 432
    invoke-virtual {p1, v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCompanionSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 434
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setAttributionType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 436
    iget-object v4, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v4}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "set the bundle id to "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-static {v11, v5, v4}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v4, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/glass/companion/CompanionTimelineUtils;->getSmsCreator(Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCreator(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 442
    iget-object v4, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->targetEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v5, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->toId:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v12}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->updateLastUsedMessagingInEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/lang/String;Landroid/util/Pair;)V

    .line 443
    return-void

    .line 398
    .end local v0    # "bundleId":Ljava/lang/String;
    .end local v1    # "modifiedTarget":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v2    # "phoneNumber":Ljava/lang/String;
    .end local v3    # "smsCompanionwareId":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 409
    .restart local v3    # "smsCompanionwareId":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    .restart local v1    # "modifiedTarget":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    goto :goto_1

    .line 417
    :cond_2
    iget-object v2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->toId:Ljava/lang/String;

    .restart local v2    # "phoneNumber":Ljava/lang/String;
    goto :goto_2

    .line 436
    .restart local v0    # "bundleId":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->getTemporaryItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 125
    iput-object p1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->message:Ljava/lang/String;

    .line 126
    const/4 v1, 0x4

    iget-object v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Message set: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;)V
    .locals 5
    .param p1, "messagingPersona"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->getTemporaryItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 117
    iput-object p1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->messagingPersona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 118
    const/4 v1, 0x4

    iget-object v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Messaging persona set: "

    .line 119
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getDisplayId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_1
    invoke-static {v1, v2, v0}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setPicture(Lcom/google/glass/camera/Picture;)V
    .locals 5
    .param p1, "picture"    # Lcom/google/glass/camera/Picture;

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->getTemporaryItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 132
    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->thumbnail:Landroid/graphics/Bitmap;

    .line 133
    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->finalPicturePath:Ljava/lang/String;

    .line 134
    const/4 v1, 0x4

    iget-object v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Picture set with file path: "

    iget-object v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->finalPicturePath:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method updateLastUsedMessagingInEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/lang/String;Landroid/util/Pair;)V
    .locals 10
    .param p1, "targetEntity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .param p2, "phone"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "glasswareSourceIdPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x1

    .line 488
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-static {v4}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    const/4 v3, 0x0

    .line 494
    .local v3, "previousDefaultPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    const/4 v1, 0x0

    .line 495
    .local v1, "matchedPersona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 496
    iget-object v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    aget-object v2, v4, v0

    .line 498
    .local v2, "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    if-eqz p2, :cond_4

    .line 499
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->hasPhoneNumberPersona()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 500
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPhoneNumberPersona()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 501
    move-object v1, v2

    .line 511
    :cond_2
    :goto_2
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getIsDefault()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 512
    move-object v3, v2

    .line 495
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 503
    :cond_4
    if-eqz p3, :cond_2

    .line 504
    iget-object v4, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v4, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v4, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 505
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 506
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 507
    move-object v1, v2

    goto :goto_2

    .line 515
    .end local v2    # "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_5
    if-eqz v1, :cond_0

    if-eq v3, v1, :cond_0

    .line 516
    invoke-virtual {v1, v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->setIsDefault(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 517
    if-eqz v3, :cond_6

    .line 518
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->clearIsDefault()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 520
    :cond_6
    iget-object v4, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Changed saved messaging persona [source=%s, personaId=%s]."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 521
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 520
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
