﻿using System;

namespace FriendsInNeed
{
    public class Street
    {
        public Node Node { get; set; }
        public ulong Distance { get; set; }

        public Street(Node node, ulong distance)
        {
            this.Node = node;
            this.Distance = distance;
        }
    }

}
